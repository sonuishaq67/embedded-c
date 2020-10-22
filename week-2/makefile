
# works on ubuntu(pop-os)
# but not arch linux gives an error arm-none-eabi-gcc: fatal error: cannot read spec file 'nosys.specs': No such file or directory


build: ./main.c 
		/usr/bin/arm-none-eabi-gcc main.c -o main.out --specs=nosys.specs -std=c99 -mcpu=cortex-m0plus -mthumb -Werror
assembly:
		/usr/bin/arm-none-eabi-gcc -S main.c -o main.s --specs=nosys.specs -std=c99 -mcpu=cortex-m0plus -mthumb
prepro:
		gcc -E -o main.i main.c
clean:
		rm main.out
		rm main.i
		rm main.o
