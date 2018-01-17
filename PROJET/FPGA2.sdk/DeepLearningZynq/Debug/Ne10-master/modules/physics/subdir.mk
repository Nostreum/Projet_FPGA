################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Ne10-master/modules/physics/NE10_physics.neon.s 

C_SRCS += \
../Ne10-master/modules/physics/NE10_init_physics.c \
../Ne10-master/modules/physics/NE10_physics.c \
../Ne10-master/modules/physics/NE10_physics.neon.c 

OBJS += \
./Ne10-master/modules/physics/NE10_init_physics.o \
./Ne10-master/modules/physics/NE10_physics.o \
./Ne10-master/modules/physics/NE10_physics.neon.o 

C_DEPS += \
./Ne10-master/modules/physics/NE10_init_physics.d \
./Ne10-master/modules/physics/NE10_physics.d \
./Ne10-master/modules/physics/NE10_physics.neon.d 


# Each subdirectory must supply rules for building sources it contributes
Ne10-master/modules/physics/%.o: ../Ne10-master/modules/physics/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../DeepLearningZynq_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Ne10-master/modules/physics/%.o: ../Ne10-master/modules/physics/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc assembler'
	arm-none-eabi-gcc -c  -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


