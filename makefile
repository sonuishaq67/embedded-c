build:
		/usr/bin/arm-none-eabi-gcc main.c -o main.out --specs=nosys.specs-std=c99 -mcpu=cortex-m0plus -mthumb -Werror
assembly:
		/usr/bin/arm-none-eabi-gcc main.c -o main.out --specs=nosys.specs-std=c99 -mcpu=cortex-m0plus -mthumb -Wall
