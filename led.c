#include "iom128v.h"

void io_init(void)
{
 	 DDRA = 0xff;
}

void delay(void)
{
 	 int i,j;
	 for(i = 0;i < 1000;i++)
	 	  {
		   for(j = 0;j < 100;j++);
		  }
}

void main(void)
{
 	 io_init();
	 while(1)
	 {
	  		 PORTA = 0xfe;
			 delay();
			 PORTA = 0xff;
			 delay();
	 }
}