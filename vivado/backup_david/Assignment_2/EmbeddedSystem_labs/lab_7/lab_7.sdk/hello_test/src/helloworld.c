
#include "xparameters.h"
#include "xiosc.h" // Include HAL for iosc driver


int main()
{
	XIosc ioscHLS; // Create an instance of the iosc driver

	// Initialize the iosc driver

	if (XIosc_Initialize(&ioscHLS, XPAR_IOSC_0_DEVICE_ID) != XST_SUCCESS) return XST_FAILURE;

	// Writing 0xff to the ctrl register of the iosc IP core

	 XIosc_SetCtrl(&ioscHLS, 0x0);

	// Reading from the ctrl register of the iosc IP core

	 while(1)
	 {
		 xil_printf("%d\r\n", XIosc_GetCtrl(&ioscHLS));
		 //result = XIosc_GetCtrl(&ioscHLS);
	 }

}
