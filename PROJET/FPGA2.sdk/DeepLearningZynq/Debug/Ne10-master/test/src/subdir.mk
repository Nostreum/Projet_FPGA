################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ne10-master/test/src/NE10_random.c \
../Ne10-master/test/src/seatest.c \
../Ne10-master/test/src/unit_test_common.c 

OBJS += \
./Ne10-master/test/src/NE10_random.o \
./Ne10-master/test/src/seatest.o \
./Ne10-master/test/src/unit_test_common.o 

C_DEPS += \
./Ne10-master/test/src/NE10_random.d \
./Ne10-master/test/src/seatest.d \
./Ne10-master/test/src/unit_test_common.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/test/src/%.o: ../Ne10-master/test/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


