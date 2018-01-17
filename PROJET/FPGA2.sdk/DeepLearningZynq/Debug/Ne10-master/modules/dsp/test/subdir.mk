################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Ne10-master/modules/dsp/test/test_main.c \
../Ne10-master/modules/dsp/test/test_suite_fft_float32.c \
../Ne10-master/modules/dsp/test/test_suite_fft_int16.c \
../Ne10-master/modules/dsp/test/test_suite_fft_int32.c \
../Ne10-master/modules/dsp/test/test_suite_fir.c \
../Ne10-master/modules/dsp/test/test_suite_fir_decimate.c \
../Ne10-master/modules/dsp/test/test_suite_fir_interpolate.c \
../Ne10-master/modules/dsp/test/test_suite_fir_lattice.c \
../Ne10-master/modules/dsp/test/test_suite_fir_sparse.c \
../Ne10-master/modules/dsp/test/test_suite_iir.c 

OBJS += \
./Ne10-master/modules/dsp/test/test_main.o \
./Ne10-master/modules/dsp/test/test_suite_fft_float32.o \
./Ne10-master/modules/dsp/test/test_suite_fft_int16.o \
./Ne10-master/modules/dsp/test/test_suite_fft_int32.o \
./Ne10-master/modules/dsp/test/test_suite_fir.o \
./Ne10-master/modules/dsp/test/test_suite_fir_decimate.o \
./Ne10-master/modules/dsp/test/test_suite_fir_interpolate.o \
./Ne10-master/modules/dsp/test/test_suite_fir_lattice.o \
./Ne10-master/modules/dsp/test/test_suite_fir_sparse.o \
./Ne10-master/modules/dsp/test/test_suite_iir.o 

C_DEPS += \
./Ne10-master/modules/dsp/test/test_main.d \
./Ne10-master/modules/dsp/test/test_suite_fft_float32.d \
./Ne10-master/modules/dsp/test/test_suite_fft_int16.d \
./Ne10-master/modules/dsp/test/test_suite_fft_int32.d \
./Ne10-master/modules/dsp/test/test_suite_fir.d \
./Ne10-master/modules/dsp/test/test_suite_fir_decimate.d \
./Ne10-master/modules/dsp/test/test_suite_fir_interpolate.d \
./Ne10-master/modules/dsp/test/test_suite_fir_lattice.d \
./Ne10-master/modules/dsp/test/test_suite_fir_sparse.d \
./Ne10-master/modules/dsp/test/test_suite_iir.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/modules/dsp/test/%.o: ../Ne10-master/modules/dsp/test/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


