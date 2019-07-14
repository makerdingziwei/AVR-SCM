CC = iccavr
LIB = ilibw
CFLAGS =  -e -D__ICC_VERSION=722 -DATMega128  -l -g -MLongJump -MHasMul -MEnhanced -Wf-use_elpm 
ASFLAGS = $(CFLAGS) 
LFLAGS =  -g -e:0x20000 -ucrtatmega.o -bfunc_lit:0x8c.0x20000 -dram_end:0x10ff -bdata:0x100.0x10ff -dhwstk_size:30 -beeprom:0.4096 -fihx_coff -S2
FILES = led.o 

LED:	$(FILES)
	$(CC) -o LED $(LFLAGS) @LED.lk   -lcatm128
led.o: .\..\..\include\iom128v.h
led.o:	led.c
	$(CC) -c $(CFLAGS) led.c
