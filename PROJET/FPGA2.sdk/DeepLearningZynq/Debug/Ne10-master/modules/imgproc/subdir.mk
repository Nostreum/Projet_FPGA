################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Ne10-master/modules/imgproc/NE10_rotate.neon.s 

C_SRCS += \
../Ne10-master/modules/imgproc/NE10_boxfilter.c \
../Ne10-master/modules/imgproc/NE10_boxfilter.neon.c \
../Ne10-master/modules/imgproc/NE10_init_imgproc.c \
../Ne10-master/modules/imgproc/NE10_resize.c \
../Ne10-master/modules/imgproc/NE10_resize.neon.c \
../Ne10-master/modules/imgproc/NE10_rotate.c 

OBJS += \
./Ne10-master/modules/imgproc/NE10_boxfilter.o \
./Ne10-master/modules/imgproc/NE10_boxfilter.neon.o \
./Ne10-master/modules/imgproc/NE10_init_imgproc.o \
./Ne10-master/modules/imgproc/NE10_resize.o \
./Ne10-master/modules/imgproc/NE10_resize.neon.o \
./Ne10-master/modules/imgproc/NE10_rotate.o \
./Ne10-master/modules/imgproc/NE10_rotate.neon.o 

C_DEPS += \
./Ne10-master/modules/imgproc/NE10_boxfilter.d \
./Ne10-master/modules/imgproc/NE10_boxfilter.neon.d \
./Ne10-master/modules/imgproc/NE10_init_imgproc.d \
./Ne10-master/modules/imgproc/NE10_resize.d \
./Ne10-master/modules/imgproc/NE10_resize.neon.d \
./Ne10-master/modules/imgproc/NE10_rotate.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/modules/imgproc/%.o: ../Ne10-master/modules/imgproc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Ne10-master/modules/imgproc/%.o: ../Ne10-master/modules/imgproc/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc assembler'
	arm-none-eabi-gcc -c  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


