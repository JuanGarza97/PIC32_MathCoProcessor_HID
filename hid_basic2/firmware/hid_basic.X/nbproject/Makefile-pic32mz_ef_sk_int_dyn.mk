#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz_ef_sk_int_dyn.mk)" "nbproject/Makefile-local-pic32mz_ef_sk_int_dyn.mk"
include nbproject/Makefile-local-pic32mz_ef_sk_int_dyn.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz_ef_sk_int_dyn
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1530581680/bsp.o ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/2102544990/sys_devcon.o ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o ${OBJECTDIR}/_ext/2118682880/system_init.o ${OBJECTDIR}/_ext/2118682880/system_interrupt.o ${OBJECTDIR}/_ext/2118682880/system_exceptions.o ${OBJECTDIR}/_ext/2118682880/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1530581680/bsp.o.d ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o.d ${OBJECTDIR}/_ext/2102544990/sys_devcon.o.d ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o.d ${OBJECTDIR}/_ext/2118682880/system_init.o.d ${OBJECTDIR}/_ext/2118682880/system_interrupt.o.d ${OBJECTDIR}/_ext/2118682880/system_exceptions.o.d ${OBJECTDIR}/_ext/2118682880/system_tasks.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d ${OBJECTDIR}/_ext/692885480/usb_device.o.d ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1530581680/bsp.o ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o ${OBJECTDIR}/_ext/2102544990/sys_devcon.o ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o ${OBJECTDIR}/_ext/2118682880/system_init.o ${OBJECTDIR}/_ext/2118682880/system_interrupt.o ${OBJECTDIR}/_ext/2118682880/system_exceptions.o ${OBJECTDIR}/_ext/2118682880/system_tasks.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ${OBJECTDIR}/_ext/692885480/usb_device.o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o

# Source Files
SOURCEFILES=../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c ../src/app.c ../src/main.c ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c ../../../../../../framework/system/int/src/sys_int_pic32.c ../../../../../../framework/system/tmr/src/sys_tmr.c ../../../../../../framework/usb/src/dynamic/usb_device.c ../../../../../../framework/usb/src/dynamic/usb_device_hid.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz_ef_sk_int_dyn.mk dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/bc5132ba1fc7152a2c2b76de3b0d57ef7da46518.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  .generated_files/309d9d8a40f68e78e7424d084b9ddb2402e37c8a.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_cache_pic32mz.S  -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/2102544990/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1530581680/bsp.o: ../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c  .generated_files/be100649b6bcf136a002a7b5f0e756082112dd16.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1530581680" 
	@${RM} ${OBJECTDIR}/_ext/1530581680/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530581680/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1530581680/bsp.o.d" -o ${OBJECTDIR}/_ext/1530581680/bsp.o ../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/63c818fc6a6134a96bd588d360718349d81b23eb.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/283087881" 
	@${RM} ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102544990/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c  .generated_files/a162ecb5cbed89d16d0856cff189697cadaff192.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/2102544990/sys_devcon.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/771b31970d5c5201e6761b6a36900ef0b605f915.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1337871079/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c  .generated_files/7f1090c4f3aa9a2a4401ca4291057efe4c1fa356.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1337871079" 
	@${RM} ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1337871079/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_init.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c  .generated_files/9f93e1e85dd2148c6a2b5f164bcb9bb941dccb13.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_init.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_init.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c  .generated_files/4ba825631473cad5f7f4ff6d2cc485812274cc70.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_interrupt.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c  .generated_files/3eaf405a4079f99eb4898931e0c3ea3aae0da005.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_exceptions.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_tasks.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c  .generated_files/614239fe39b8e25277259cf62db84de14123378c.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_tasks.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/35c9af2f070e8260f16fddab06f4662362ed5bb1.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/8efc77da9f4a019eee4962f9a93c1b2c88a19cd5.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/13548ffe8c7fe1db44d7046a06f569686bcd4a05.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/217a4c8d1bfad25a6166978150a42f15171dd4cb.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/98c8a1b0d4662e9a4eb57a59d4f4f49ccf17034c.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/af5526b542f822e7f0a2c523d2263bdf14b03c5.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/bd1468bb161966577207cbdbd476b290e09ed809.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/70e79216ba5bf9114509fc962c9eb6cc4abe82ba.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  .generated_files/1c5ca0bcbcc2cd8e10fbd6e2762e8f61165500d1.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1530581680/bsp.o: ../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c  .generated_files/ca14ce816780c39183806aa4e7b25a7423ce918d.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1530581680" 
	@${RM} ${OBJECTDIR}/_ext/1530581680/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1530581680/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1530581680/bsp.o.d" -o ${OBJECTDIR}/_ext/1530581680/bsp.o ../src/system_config/pic32mz_ef_sk_int_dyn/bsp/bsp.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c  .generated_files/fc5f54b225a56672dbaf01516470e47c07eed8dd.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/283087881" 
	@${RM} ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o.d" -o ${OBJECTDIR}/_ext/283087881/sys_clk_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/clk/src/sys_clk_pic32mz.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102544990/sys_devcon.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c  .generated_files/56de67f761acc44c454ccd7f2ad18c194dc17e32.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon.o.d" -o ${OBJECTDIR}/_ext/2102544990/sys_devcon.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c  .generated_files/4c3fc0236b4bd6f83ddd1218baf3c96b0121de91.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2102544990" 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/2102544990/sys_devcon_pic32mz.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/devcon/src/sys_devcon_pic32mz.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1337871079/sys_ports_static.o: ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c  .generated_files/fa7f5fcca37b3ebc131338c755e916ba35adc8ff.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1337871079" 
	@${RM} ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o.d 
	@${RM} ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1337871079/sys_ports_static.o.d" -o ${OBJECTDIR}/_ext/1337871079/sys_ports_static.o ../src/system_config/pic32mz_ef_sk_int_dyn/framework/system/ports/src/sys_ports_static.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_init.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c  .generated_files/db6500d8e3c444f6a5791d3f9966666ab8c6bf41.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_init.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_init.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_init.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_interrupt.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c  .generated_files/cdb467dcaf2954fac5b6e3de8e277e3077157f8c.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_interrupt.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_interrupt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_interrupt.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_interrupt.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_interrupt.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_exceptions.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c  .generated_files/b31d9a4a0a8b17ae3da12c547e4816bb2bc5515e.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_exceptions.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_exceptions.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_exceptions.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2118682880/system_tasks.o: ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c  .generated_files/c865a92304f5ff7740b8297d658a55f1a8cf7c6b.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2118682880" 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/2118682880/system_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2118682880/system_tasks.o.d" -o ${OBJECTDIR}/_ext/2118682880/system_tasks.o ../src/system_config/pic32mz_ef_sk_int_dyn/system_tasks.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/68d8c5551f64ae4f1f3fec6e593ed22662579eb.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/a940a26f5d9b55754046e1e3b5b2ac70af41023e.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1152366776/drv_tmr.o: ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c  .generated_files/a7639bff4229b0de097317dce116210687d3d5f6.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1152366776" 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1152366776/drv_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1152366776/drv_tmr.o.d" -o ${OBJECTDIR}/_ext/1152366776/drv_tmr.o ../../../../../../framework/driver/tmr/src/dynamic/drv_tmr.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c  .generated_files/eb431c0228c2dbb4ae63c0190ea2c30862e26313.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o: ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c  .generated_files/9a6e3c51562bf1f492b03be5b20ff82ad51db2e1.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1698770803" 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/1698770803/drv_usbhs_device.o ../../../../../../framework/driver/usb/usbhs/src/dynamic/drv_usbhs_device.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/711155467/sys_int_pic32.o: ../../../../../../framework/system/int/src/sys_int_pic32.c  .generated_files/9cc7190ac08a23dae2e39db6941d2f03d50f3a39.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/711155467" 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d 
	@${RM} ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/711155467/sys_int_pic32.o.d" -o ${OBJECTDIR}/_ext/711155467/sys_int_pic32.o ../../../../../../framework/system/int/src/sys_int_pic32.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/430974239/sys_tmr.o: ../../../../../../framework/system/tmr/src/sys_tmr.c  .generated_files/3c36cf71741cba211d53965b0501ee0a19ee2bc7.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/430974239" 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/430974239/sys_tmr.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/430974239/sys_tmr.o.d" -o ${OBJECTDIR}/_ext/430974239/sys_tmr.o ../../../../../../framework/system/tmr/src/sys_tmr.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device.o: ../../../../../../framework/usb/src/dynamic/usb_device.c  .generated_files/5dd7fd7b2bfee020cd0e6aa606018869d5c4edca.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device.o ../../../../../../framework/usb/src/dynamic/usb_device.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/692885480/usb_device_hid.o: ../../../../../../framework/usb/src/dynamic/usb_device_hid.c  .generated_files/71bf619f1e4b8d17e718104df892adfe504f984e.flag .generated_files/7062c6a2e366d5b86a739703dd67a96ffb9508f3.flag
	@${MKDIR} "${OBJECTDIR}/_ext/692885480" 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/692885480/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/system_config/pic32mz_ef_sk_int_dyn" -I"../src/pic32mz_ef_sk_int_dyn" -I"../../../../../../framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/framework" -I"../src/system_config/pic32mz_ef_sk_int_dyn/bsp" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/692885480/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/692885480/usb_device_hid.o ../../../../../../framework/usb/src/dynamic/usb_device_hid.c    -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../../bin/framework/peripheral/PIC32MZ2048EFM144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048EFM144_peripherals.a      -DXPRJ_pic32mz_ef_sk_int_dyn=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=0,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/hid_basic.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mz_ef_sk_int_dyn
	${RM} -r dist/pic32mz_ef_sk_int_dyn

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
