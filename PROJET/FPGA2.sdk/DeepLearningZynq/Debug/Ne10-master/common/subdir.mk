################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Ne10-master/common/NE10header.s \
../Ne10-master/common/versionheader.s 

C_SRCS += \
../Ne10-master/common/NE10_mask_table.c 

OBJS += \
./Ne10-master/common/NE10_mask_table.o \
./Ne10-master/common/NE10header.o \
./Ne10-master/common/versionheader.o 

C_DEPS += \
./Ne10-master/common/NE10_mask_table.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/common/%.o: ../Ne10-master/common/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Ne10-master/common/%.o: ../Ne10-master/common/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc assembler'
	arm-none-eabi-gcc -c  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


