#include "xparameters.h"
#include "xgpio.h"
#include "matrix_ip.h"

#include "xscutimer.h"


//====================================================

int main (void) 
{

   XGpio dip, push;
   int i, psb_check, dip_check;
   int value, skip, Status;
   int timer_state = 0;
   int red_led_counter = 0;

   xil_printf("-- Start of the Program --\r\n");
 
   XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&push, 1, 0xffffffff);
   //TimerSetup
   XScuTimer Timer;
   #define ONE_SECOND 325000000
   #define TEN_SECOND 3250000000

   XScuTimer_Config *ConfigPtr;
   XScuTimer *TimerInstancePtr = &Timer;

   ConfigPtr = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);
   Status    = XScuTimer_CfgInitialize(TimerInstancePtr, ConfigPtr, ConfigPtr->BaseAddr);

   if(Status != XST_SUCCESS) {
	   xil_printf("Timer init() failed\r\n");
	   return XST_FAILURE;
   }

   //XScuTimer_LoadTimer(TimerInstancePtr,ONE_SECOND);
   XScuTimer_LoadTimer(TimerInstancePtr,TEN_SECOND);
   XScuTimer_EnableAutoReload(TimerInstancePtr);

   //Matrix setup
	#define MSIZE 4

   typedef union {
	   unsigned char com[MSIZE];
	   unsigned int vect;
   } vectorType;

   typedef vectorType VectorArray[MSIZE];

   VectorArray pInst, aInst, bInst;

   void setInputHatrices (VectorArray A, VectorArray B) {
	   //Fill A

	   int valueA = 1;
	   int valueB = 1;

	   for (int i = 0; i < MSIZE; i++) { //Cols
		   for (int j = 0; j < MSIZE; j++) { // Rows
			   //Vector A
			   A[i].com[j] = valueA;
			   valueA++;
			   //Vector B
			   B[j].com[i] = valueB;
		}
		   valueB++;
	}


   }
   void displayMatrix(VectorArray input) {

	   for (int i = 0; i < MSIZE; i++) { //Cols
		   for (int j = 0; j < MSIZE; j++) { // Rows
			   xil_printf("%d \x9",input[i].com[j]); // ASCII tap 9
		}
		   xil_printf("\r\n");
	}
   }

   void multiMatrixSoft (VectorArray A,VectorArray B, VectorArray P) {

	   for (int k = 0; k < MSIZE; k++) {

		   for (int j = 0; j < MSIZE; j++) { //Rows

			   P[j].com[k] = 0;
			   for (int i = 0; i < MSIZE; i++) { //Cols

				   P[j].com[k] += (A[j].com[i])*(B[k].com[i]);
			}
		}
	}

   }
   void multiMatrixHard(VectorArray A,VectorArray B, VectorArray P) {
	   for (int row = 0; row < MSIZE; row++) { //Rows
		   for (int col = 0; col < MSIZE; col++) { //Cols
			   Xil_Out32(XPAR_MATRIX_IP_S_AXI_BASEADDR + MATRIX_IP_S_AXI_SLV_REG0_OFFSET, A[row].vect);
			   Xil_Out32(XPAR_MATRIX_IP_S_AXI_BASEADDR + MATRIX_IP_S_AXI_SLV_REG1_OFFSET, B[col].vect);
			   P[row].com[col] = Xil_In32(XPAR_MATRIX_IP_S_AXI_BASEADDR + MATRIX_IP_S_AXI_SLV_REG2_OFFSET);
		}
	}



   }



   xil_printf("Started!!");

   xil_printf("Eneter choice 1 (SW->led) 2 (timer->led),3 (Matrix) ,4 (Exit) \r\n");
   xil_printf("CMD:>");
   value = inbyte();
   skip = inbyte();
   skip = inbyte();
   xil_printf("You typed: %d\r\n", value);

   while (1)
   {




	   switch (value) {
		case 49: // ASCII 1
			   xil_printf("case 1 \r\n");
			  psb_check = XGpio_DiscreteRead(&push, 1);
			  xil_printf("Push Buttons Status %x\r\n", psb_check);
			  dip_check = XGpio_DiscreteRead(&dip, 1);
			  xil_printf("DIP Switch Status %x\r\n", dip_check);
			  //LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR,0, dip_check);
			break;
		case 50: // ASCII 2
			xil_printf("case 2 \r\n");
			XScuTimer_Start(TimerInstancePtr);

/*			if (timer_state == 0) {
				XScuTimer_Start(TimerInstancePtr);
				timer_state = 1;
			}
			else {
				   XScuTimer_Stop(TimerInstancePtr);
				   timer_state = 0;
			}
*/
			break;
		case 51: // ASCII 3
			setInputHatrices(aInst,bInst);

			xil_printf("Displaying A and bT \r\n");
			displayMatrix(aInst);
		   xil_printf("\r\n");
		   displayMatrix(bInst);
		   xil_printf("\r\n");

		   xil_printf("Doing the math the soft way \r\n");

		   XScuTimer_Start(TimerInstancePtr);
		   multiMatrixSoft(aInst,bInst,pInst);
		   XScuTimer_Stop(TimerInstancePtr);

		   xil_printf("Displaying P \r\n");

		   displayMatrix(pInst);


/*
		   xil_printf("Doing the math the hard way \r\n");
		   XScuTimer_Start(TimerInstancePtr);
		   multiMatrixHard(aInst,bInst,pInst);
		   XScuTimer_Stop(TimerInstancePtr);

		   xil_printf("Displaying P \r\n");

		   displayMatrix(pInst);
*/
		   goto label3; // dirt diry dirt

			break;
		case 52: // ASCII 4
			break;
		default:
			break;
	}
	   if(XScuTimer_IsExpired(TimerInstancePtr)) {
		   XScuTimer_ClearInterruptStatus(TimerInstancePtr);
		   red_led_counter++;
		   xil_printf("Current count: %d\r\n", red_led_counter);
		   //LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR,0, red_led_counter);
	   }

	   for (i=0; i<9999999; i++);
   }
   label3: ;
   xil_printf( "Clock cycles:  %d" , TEN_SECOND - XScuTimer_ReadReg(ConfigPtr->BaseAddr,XSCUTIMER_COUNTER_OFFSET));
}
