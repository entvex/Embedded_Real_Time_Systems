#include "ios_driver.h"

void ios_driver::test() {

	//Variables
	sc_uint<4> sw_test;
	sc_uint<4> ctrl_test;
	sc_uint<4> led_result;

	//Initialization
	sw_test = 0x0;
	ctrl_test = 0x0;

	reset.write(true);
	wait();
	reset.write(false);
	wait();

	ctrl.write(ctrl_test);
	outSwitch.write(sw_test);

	wait();
	wait();

	led_result = inLeds.read();
	wait();

	if (sw_test == led_result)
		retval = 0;
	else
		retval = 1;

}
