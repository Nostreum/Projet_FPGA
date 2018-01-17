################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ne10-master/samples/NE10_sample_complex_fft.c \
../Ne10-master/samples/NE10_sample_fir.c \
../Ne10-master/samples/NE10_sample_intro.c \
../Ne10-master/samples/NE10_sample_matrix_multiply.c \
../Ne10-master/samples/NE10_sample_real_fft.c \
../Ne10-master/samples/NE10_samples.c 

OBJS += \
./Ne10-master/samples/NE10_sample_complex_fft.o \
./Ne10-master/samples/NE10_sample_fir.o \
./Ne10-master/samples/NE10_sample_intro.o \
./Ne10-master/samples/NE10_sample_matrix_multiply.o \
./Ne10-master/samples/NE10_sample_real_fft.o \
./Ne10-master/samples/NE10_samples.o 

C_DEPS += \
./Ne10-master/samples/NE10_sample_complex_fft.d \
./Ne10-master/samples/NE10_sample_fir.d \
./Ne10-master/samples/NE10_sample_intro.d \
./Ne10-master/samples/NE10_sample_matrix_multiply.d \
./Ne10-master/samples/NE10_sample_real_fft.d \
./Ne10-master/samples/NE10_samples.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/samples/%.o: ../Ne10-master/samples/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


