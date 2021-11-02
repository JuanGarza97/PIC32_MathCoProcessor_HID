#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
#include <windows.h>
#include <SETUPAPI.H>




float matA[8][8];
float matB[8][8];
float matC[8][8];

int opc=0;
int cont = 0;
unsigned char cod[256]="",Ecod[256]="", Decod[256] = "";
//----------------------------------------------
#define RICH_VENDOR_ID			0x0000
#define RICH_USBHID_GENIO_ID	0x2021

#define INPUT_REPORT_SIZE	64
#define OUTPUT_REPORT_SIZE	64
//----------------------------------------------

typedef struct _HIDD_ATTRIBUTES {
	ULONG   Size; // = sizeof (struct _HIDD_ATTRIBUTES)
	USHORT  VendorID;
	USHORT  ProductID;
	USHORT  VersionNumber;
} HIDD_ATTRIBUTES, * PHIDD_ATTRIBUTES;

typedef VOID(__stdcall* PHidD_GetProductString)(HANDLE, PVOID, ULONG);
typedef VOID(__stdcall* PHidD_GetHidGuid)(LPGUID);
typedef BOOLEAN(__stdcall* PHidD_GetAttributes)(HANDLE, PHIDD_ATTRIBUTES);
typedef BOOLEAN(__stdcall* PHidD_SetFeature)(HANDLE, PVOID, ULONG);
typedef BOOLEAN(__stdcall* PHidD_GetFeature)(HANDLE, PVOID, ULONG);

//----------------------------------------------

HINSTANCE                       hHID = NULL;
PHidD_GetProductString          HidD_GetProductString = NULL;
PHidD_GetHidGuid                HidD_GetHidGuid = NULL;
PHidD_GetAttributes             HidD_GetAttributes = NULL;
PHidD_SetFeature                HidD_SetFeature = NULL;
PHidD_GetFeature                HidD_GetFeature = NULL;
HANDLE                          DeviceHandle = INVALID_HANDLE_VALUE;

unsigned int moreHIDDevices = TRUE;
unsigned int HIDDeviceFound = FALSE;

unsigned int terminaAbruptaEInstantaneamenteElPrograma = 0;

void Load_HID_Library(void) {
	hHID = LoadLibrary("HID.DLL");
	if (!hHID) {
		printf("Failed to load HID.DLL\n");
		return;
	}

	HidD_GetProductString = (PHidD_GetProductString)GetProcAddress(hHID, "HidD_GetProductString");
	HidD_GetHidGuid = (PHidD_GetHidGuid)GetProcAddress(hHID, "HidD_GetHidGuid");
	HidD_GetAttributes = (PHidD_GetAttributes)GetProcAddress(hHID, "HidD_GetAttributes");
	HidD_SetFeature = (PHidD_SetFeature)GetProcAddress(hHID, "HidD_SetFeature");
	HidD_GetFeature = (PHidD_GetFeature)GetProcAddress(hHID, "HidD_GetFeature");

	if (!HidD_GetProductString
		|| !HidD_GetAttributes
		|| !HidD_GetHidGuid
		|| !HidD_SetFeature
		|| !HidD_GetFeature) {
		printf("Couldn't find one or more HID entry points\n");
		return;
	}
}

int Open_Device(void) {
	HDEVINFO							DeviceInfoSet;
	GUID								InterfaceClassGuid;
	SP_DEVICE_INTERFACE_DATA			DeviceInterfaceData;
	PSP_DEVICE_INTERFACE_DETAIL_DATA	pDeviceInterfaceDetailData;
	HIDD_ATTRIBUTES						Attributes;
	DWORD								Result;
	DWORD								MemberIndex = 0;
	DWORD								Required;

	//Validar si se "cargó" la biblioteca (DLL)
	if (!hHID)
		return (0);

	//Obtener el Globally Unique Identifier (GUID) para dispositivos HID
	HidD_GetHidGuid(&InterfaceClassGuid);
	//Sacarle a Windows la información sobre todos los dispositivos HID instalados y activos en el sistema
	// ... almacenar esta información en una estructura de datos de tipo HDEVINFO
	DeviceInfoSet = SetupDiGetClassDevs(&InterfaceClassGuid, NULL, NULL, DIGCF_PRESENT | DIGCF_INTERFACEDEVICE);
	if (DeviceInfoSet == INVALID_HANDLE_VALUE)
		return (0);

	//Obtener la interfaz de comunicación con cada uno de los dispositivos para preguntarles información específica
	DeviceInterfaceData.cbSize = sizeof(SP_DEVICE_INTERFACE_DATA);
	while (!HIDDeviceFound) {
		// ... utilizando la variable MemberIndex ir preguntando dispositivo por dispositivo ...
		moreHIDDevices = SetupDiEnumDeviceInterfaces(DeviceInfoSet, NULL, &InterfaceClassGuid,
			MemberIndex, &DeviceInterfaceData);
		if (!moreHIDDevices) {
			// ... si llegamos al fin de la lista y no encontramos al dispositivo ==> terminar y marcar error
			SetupDiDestroyDeviceInfoList(DeviceInfoSet);
			return (0); //No more devices found
		}
		else {
			//Necesitamos preguntar, a través de la interfaz, el PATH del dispositivo, para eso ...
			// ... primero vamos a ver cuántos caracteres se requieren (Required)
			Result = SetupDiGetDeviceInterfaceDetail(DeviceInfoSet, &DeviceInterfaceData, NULL, 0, &Required, NULL);
			pDeviceInterfaceDetailData = (PSP_DEVICE_INTERFACE_DETAIL_DATA)malloc(Required);
			if (pDeviceInterfaceDetailData == NULL) {
				printf("Error en SetupDiGetDeviceInterfaceDetail\n");
				return (0);
			}
			//Ahora si, ya que el "buffer" fue preparado (pDeviceInterfaceDetailData{DevicePath}), vamos a preguntar PATH
			pDeviceInterfaceDetailData->cbSize = sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA);
			Result = SetupDiGetDeviceInterfaceDetail(DeviceInfoSet, &DeviceInterfaceData, pDeviceInterfaceDetailData,
				Required, NULL, NULL);
			if (!Result) {
				printf("Error en SetupDiGetDeviceInterfaceDetail\n");
				free(pDeviceInterfaceDetailData);
				return(0);
			}
			//Para este momento ya sabemos el PATH del dispositivo, ahora hay que preguntarle ...
			// ... su VID y PID, para ver si es con quien nos interesa comunicarnos
			printf("Found? ==> ");
			printf("Device: %s\n", pDeviceInterfaceDetailData->DevicePath);

			//Obtener un "handle" al dispositivo
			DeviceHandle = CreateFile(pDeviceInterfaceDetailData->DevicePath,
				GENERIC_READ | GENERIC_WRITE,
				FILE_SHARE_READ | FILE_SHARE_WRITE,
				(LPSECURITY_ATTRIBUTES)NULL,
				OPEN_EXISTING,
				0,
				NULL);

			if (DeviceHandle == INVALID_HANDLE_VALUE) {
				printf("¡¡¡Error en el CreateFile!!!\n");
			}
			else {
				//Preguntar por los atributos del dispositivo
				Attributes.Size = sizeof(Attributes);
				Result = HidD_GetAttributes(DeviceHandle, &Attributes);
				if (!Result) {
					printf("Error en HIdD_GetAttributes\n");
					CloseHandle(DeviceHandle);
					free(pDeviceInterfaceDetailData);
					return(0);
				}
				//Analizar los atributos del dispositivo para verificar el VID y PID
				printf("MemberIndex=%d,VID=%04x,PID=%04x\n", MemberIndex, Attributes.VendorID, Attributes.ProductID);
				if ((Attributes.VendorID == RICH_VENDOR_ID) && (Attributes.ProductID == RICH_USBHID_GENIO_ID)) {
					printf("USB/HID GenIO ==> ");
					printf("Device: %s\n", pDeviceInterfaceDetailData->DevicePath);
					HIDDeviceFound = TRUE;
				}
				else
					CloseHandle(DeviceHandle);

			}
			MemberIndex++;
			free(pDeviceInterfaceDetailData);
			if (HIDDeviceFound) {
				printf("Dispositivo HID solicitado ... ¡¡¡localizado!!!, presione <ENTER>\n");
				getchar();
			}
		}
	}
	return(1);
}

void Close_Device(void) {
	if (DeviceHandle != NULL) {
		CloseHandle(DeviceHandle);
		DeviceHandle = NULL;
	}
}

int Touch_Device(void) {
	DWORD BytesRead = 0;
	DWORD BytesWritten = 0;
	unsigned char reporteEntrada[INPUT_REPORT_SIZE + 1];
	unsigned char reporteSalida[OUTPUT_REPORT_SIZE + 1];
	int status = 0;
	float* ptr;

	if (DeviceHandle == NULL)	//Validar que haya comunicacion con el dispositivo
		return 0;

	for (int i = 0; i < 8; i++)
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x60; //Comando transferencia
		reporteSalida[2] = i; //Numero de renglon
		for (int j = 0; j < 8; j++)
		{
			ptr = (float*)& reporteSalida[3 + j * 4];
			*ptr = matA[i][j];
		}
		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);
	}

	for (int i = 0; i < 8; i++)
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x61; //Comando transferencia
		reporteSalida[2] = i; //Numero de renglon
		for (int j = 0; j < 8; j++)
		{
			ptr = (float*) &reporteSalida[3 + j * 4];
			*ptr = matB[i][j];
		}
		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);
	}

	printf("Voy por un reporte ...\n");
	reporteSalida[0] = 0x00;
	reporteSalida[1] = 0x62;
	reporteSalida[2] = 0;

	status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
	if (!status)
		printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
	else
		printf("Escritos %d\n", BytesWritten);

	for (int i = 0; i < 8; i++)
	{
		reporteSalida[0] = 0x00;
		reporteSalida[1] = 0x63;
		reporteSalida[2] = i;

		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);

		memset(&reporteEntrada, 0, INPUT_REPORT_SIZE + 1);
		status = ReadFile(DeviceHandle, reporteEntrada, INPUT_REPORT_SIZE + 1, &BytesRead, NULL);
		if (!status)
			printf("Error en el ReadFile: %d\n", GetLastError());
		else
		{
			for (int j = 0; j < 8; j++)
			{
				ptr = (float*)&reporteEntrada[2 + j * 4];
				matC[i][j] = *ptr;
			}
		}

	}
	return status;
}

int Touch_Device2(void) {
	DWORD BytesRead = 0;
	DWORD BytesWritten = 0;
	unsigned char reporteEntrada[INPUT_REPORT_SIZE + 1];
	unsigned char reporteSalida[OUTPUT_REPORT_SIZE + 1];
	int status = 0;
	float* ptr;

	if (DeviceHandle == NULL)	//Validar que haya comunicacion con el dispositivo
		return 0;

	int times = (cont / 60)+1;
	int j = 0;

	for (int i=0;i<times;i++) 
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x70; //Comando transferencia
		reporteSalida[2] = cont; //Numero de caracteres a someter
		reporteSalida[3] = j;
		int repN=4;
			
		while((j<cont)&&(repN<65)) {
				reporteSalida[repN] = (char)cod[j];
				j++;
				repN++;
		}

		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);
	}
	
	reporteSalida[0] = 0; //Dummy
	reporteSalida[1] = 0x71; //Comando de encriptacion
	status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);

	j = 0;

	for (int i = 0; i < times; i++)
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x72; //Comando de recepcion
		reporteSalida[2] = cont; //Dummy

		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);

		memset(&reporteEntrada, 0, INPUT_REPORT_SIZE + 1);
		status = ReadFile(DeviceHandle, reporteEntrada, INPUT_REPORT_SIZE + 1, &BytesRead, NULL);
		if (!status)
			printf("Error en el ReadFile: %d\n", GetLastError());
		else
		{
			int repN = 3;

			while ((j < cont) && (repN < 65)) {
				Ecod[j] = reporteEntrada[repN];
				j++;
				repN++;
			}
		}

	
	}

	j = 0;
	for (int i = 0; i < times; i++)
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x70; //Comando transferencia
		reporteSalida[2] = cont; //Numero de caracteres a someter
		reporteSalida[3] = j;
		int repN = 4;

		while ((j < cont) && (repN < 65)) {
			reporteSalida[repN] = (char)Ecod[j];
			j++;
			repN++;
		}

		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);
	}

	reporteSalida[0] = 0; //Dummy
	reporteSalida[1] = 0x71; //Comando de encriptacion
	status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);

	j = 0;

	for (int i = 0; i < times; i++)
	{
		reporteSalida[0] = 0; //Dummy
		reporteSalida[1] = 0x72; //Comando de recepcion
		reporteSalida[2] = cont; //Dummy

		status = WriteFile(DeviceHandle, reporteSalida, OUTPUT_REPORT_SIZE + 1, &BytesWritten, NULL);
		if (!status)
			printf("Error en el WriteFile %d %d\n", GetLastError(), BytesWritten);
		else
			printf("Escritos %d\n", BytesWritten);

		memset(&reporteEntrada, 0, INPUT_REPORT_SIZE + 1);
		status = ReadFile(DeviceHandle, reporteEntrada, INPUT_REPORT_SIZE + 1, &BytesRead, NULL);
		if (!status)
			printf("Error en el ReadFile: %d\n", GetLastError());
		else
		{
			int repN = 3;

			while ((j < cont) && (repN < 65)) {
				Decod[j] = reporteEntrada[repN];
				j++;
				repN++;
			}
		}


	}

	return status;
}

void main() {
	int flag = 0;

	Load_HID_Library();
	if (Open_Device()) {
		printf("Vamos bien\n");

		printf("Opcion a seleccionar['1','2']:");
		scanf_s("%d", &opc);
		if (opc==1) 
		{
			for (int i = 0; i < 8; i++)
			{
				for (int j = 0; j < 8; j++)
				{
					matA[i][j] = 0.5;
					matB[i][j] = 0.5;
				}
			}
			flag = Touch_Device();
			if (flag) 
			{
				for (int i = 0; i < 8; i++) {
					printf("\n");
					for (int j = 0; j < 8; j++)
					{
						printf("\t%0.2f", matC[i][j]);
					}
				}
			}

		}
		else if(opc==2)
		{
		
			printf("Escriba el mensaje ULTRA SECRETO a codificar: ");

	
			fgets(cod, (unsigned)_countof(cod), stdin);
			fgets(cod, (unsigned)_countof(cod), stdin);
		

			for (int i = 0; cod[i] != '\0';i++) {
				cont++;
			}
			cont -= 1;
			printf("Codigo secreto: %s tamano: %d \n", cod, cont);

			flag = Touch_Device2();

			if (flag)
			{
				printf("Codigo Encriptado: %s\n", Ecod);

				printf("Codigo desencriptado: %s\n", Decod);
			}
	
		



		}
		else
		{
			printf("Error al seleccionar opcion");

		}
	}
	else {
		printf("Nojao >:(\n");
	}
	Close_Device();
	return 0;
}