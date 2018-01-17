################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Ne10-master/modules/dsp/NE10_fft_float32.neon.s \
../Ne10-master/modules/dsp/NE10_fft_int16.neon.s \
../Ne10-master/modules/dsp/NE10_fft_int32.neon.s \
../Ne10-master/modules/dsp/NE10_fir.neon.s \
../Ne10-master/modules/dsp/NE10_iir.neon.s 

C_SRCS += \
../Ne10-master/modules/dsp/NE10_fft.c \
../Ne10-master/modules/dsp/NE10_fft_float32.c \
../Ne10-master/modules/dsp/NE10_fft_float32.neon.c \
../Ne10-master/modules/dsp/NE10_fft_float32.neonintrinsic.c \
../Ne10-master/modules/dsp/NE10_fft_generic_float32.c \
../Ne10-master/modules/dsp/NE10_fft_int16.c \
../Ne10-master/modules/dsp/NE10_fft_int16.neon.c \
../Ne10-master/modules/dsp/NE10_fft_int16.neonintrinsic.c \
../Ne10-master/modules/dsp/NE10_fft_int32.c \
../Ne10-master/modules/dsp/NE10_fft_int32.neon.c \
../Ne10-master/modules/dsp/NE10_fft_int32.neonintrinsic.c \
../Ne10-master/modules/dsp/NE10_fir.c \
../Ne10-master/modules/dsp/NE10_fir_init.c \
../Ne10-master/modules/dsp/NE10_iir.c \
../Ne10-master/modules/dsp/NE10_iir_init.c \
../Ne10-master/modules/dsp/NE10_init_dsp.c \
../Ne10-master/modules/dsp/NE10_rfft_float32.c \
../Ne10-master/modules/dsp/NE10_rfft_float32.neonintrinsic.c 

S_UPPER_SRCS += \
../Ne10-master/modules/dsp/NE10_fft_float32.neonv8.S 

OBJS += \
./Ne10-master/modules/dsp/NE10_fft.o \
./Ne10-master/modules/dsp/NE10_fft_float32.o \
./Ne10-master/modules/dsp/NE10_fft_float32.neon.o \
./Ne10-master/modules/dsp/NE10_fft_float32.neonintrinsic.o \
./Ne10-master/modules/dsp/NE10_fft_float32.neonv8.o \
./Ne10-master/modules/dsp/NE10_fft_generic_float32.o \
./Ne10-master/modules/dsp/NE10_fft_int16.o \
./Ne10-master/modules/dsp/NE10_fft_int16.neon.o \
./Ne10-master/modules/dsp/NE10_fft_int16.neonintrinsic.o \
./Ne10-master/modules/dsp/NE10_fft_int32.o \
./Ne10-master/modules/dsp/NE10_fft_int32.neon.o \
./Ne10-master/modules/dsp/NE10_fft_int32.neonintrinsic.o \
./Ne10-master/modules/dsp/NE10_fir.o \
./Ne10-master/modules/dsp/NE10_fir.neon.o \
./Ne10-master/modules/dsp/NE10_fir_init.o \
./Ne10-master/modules/dsp/NE10_iir.o \
./Ne10-master/modules/dsp/NE10_iir.neon.o \
./Ne10-master/modules/dsp/NE10_iir_init.o \
./Ne10-master/modules/dsp/NE10_init_dsp.o \
./Ne10-master/modules/dsp/NE10_rfft_float32.o \
./Ne10-master/modules/dsp/NE10_rfft_float32.neonintrinsic.o 

S_UPPER_DEPS += \
./Ne10-master/modules/dsp/NE10_fft_float32.neonv8.d 

C_DEPS += \
./Ne10-master/modules/dsp/NE10_fft.d \
./Ne10-master/modules/dsp/NE10_fft_float32.d \
./Ne10-master/modules/dsp/NE10_fft_float32.neon.d \
./Ne10-master/modules/dsp/NE10_fft_float32.neonintrinsic.d \
./Ne10-master/modules/dsp/NE10_fft_generic_float32.d \
./Ne10-master/modules/dsp/NE10_fft_int16.d \
./Ne10-master/modules/dsp/NE10_fft_int16.neon.d \
./Ne10-master/modules/dsp/NE10_fft_int16.neonintrinsic.d \
./Ne10-master/modules/dsp/NE10_fft_int32.d \
./Ne10-master/modules/dsp/NE10_fft_int32.neon.d \
./Ne10-master/modules/dsp/NE10_fft_int32.neonintrinsic.d \
./Ne10-master/modules/dsp/NE10_fir.d \
./Ne10-master/modules/dsp/NE10_fir_init.d \
./Ne10-master/modules/dsp/NE10_iir.d \
./Ne10-master/modules/dsp/NE10_iir_init.d \
./Ne10-master/modules/dsp/NE10_init_dsp.d \
./Ne10-master/modules/dsp/NE10_rfft_float32.d \
./Ne10-master/modules/dsp/NE10_rfft_float32.neonintrinsic.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/modules/dsp/%.o: ../Ne10-master/modules/dsp/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Ne10-master/modules/dsp/%.o: ../Ne10-master/modules/dsp/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc assembler'
	arm-none-eabi-gcc -c  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Ne10-master/modules/dsp/%.o: ../Ne10-master/modules/dsp/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


