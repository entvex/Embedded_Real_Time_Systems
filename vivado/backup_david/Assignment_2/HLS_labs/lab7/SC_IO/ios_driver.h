#ifndef _IOS_DRIVER
#define _IOS_DRIVER

#include <systemc.h>

SC_MODULE(ios_driver) {

	//Ports
	sc_in <bool> clk;
	sc_out <bool> reset;

	sc_out<sc_uint<4> > ctrl;
	sc_out<sc_uint<4> > outSwitch;
	sc_in<sc_uint<4> > inLeds;

	int retval;

	//Process Declaration
	void test();

	//Constructor
	SC_CTOR(ios_driver) : retval(-1) {

		//Process Registration
		SC_THREAD(test);
		sensitive << clk.pos();
	}
};

#endif
