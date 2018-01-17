################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ne10-master/modules/imgproc/test/test_main.c \
../Ne10-master/modules/imgproc/test/test_suite_boxfilter.c \
../Ne10-master/modules/imgproc/test/test_suite_resize.c \
../Ne10-master/modules/imgproc/test/test_suite_rotate.c 

OBJS += \
./Ne10-master/modules/imgproc/test/test_main.o \
./Ne10-master/modules/imgproc/test/test_suite_boxfilter.o \
./Ne10-master/modules/imgproc/test/test_suite_resize.o \
./Ne10-master/modules/imgproc/test/test_suite_rotate.o 

C_DEPS += \
./Ne10-master/modules/imgproc/test/test_main.d \
./Ne10-master/modules/imgproc/test/test_suite_boxfilter.d \
./Ne10-master/modules/imgproc/test/test_suite_resize.d \
./Ne10-master/modules/imgproc/test/test_suite_rotate.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/modules/imgproc/test/%.o: ../Ne10-master/modules/imgproc/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


