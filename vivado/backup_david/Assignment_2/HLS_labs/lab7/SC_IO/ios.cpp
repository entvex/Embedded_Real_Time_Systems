#include "ios.h"


void iosc::controlOutLeds(){
	//Group ports into AXI4 slave slv0
	#pragma HLS resource core=AXI4LiteS metadata="-bus_bundle slv0" variable=ctrl
	int internalLEDValue = 0;
	wait();

	while(true) {
		wait();

	int value = ctrl.read();

	switch (value) {
		case 0:

			if (inSwitch.read() == 8)
			{
				internalLEDValue = 0;
				outLeds.write(internalLEDValue);
			}
			else
			{
				if(internalPulse.read() == true)
				{
					outLeds.write(internalLEDValue++);
				}
			}

			break;
		case 1 ... 15:
			outLeds.write(value & inSwitch.read());
			break;
		default:
			break;
	}

	}
}

void iosc::pulse() {
	sc_uint<30> clockCounter = 0;
	internalPulse.write(false);
	wait();

	while(true)
	{
		//if (clockCounter > 100000000)
		if (clockCounter > 1000)
		{
			clockCounter = 0;
			internalPulse.write(true);
		} else {
			clockCounter++;
			internalPulse.write(false);
		}
		wait();
	}
}
