/*
 * AvalonStreamingBus.h
 *
 *  Created on: Sep 5, 2018
 *      Author: tihsc
 */

#ifndef AVALONSTREAMINGBUS_H_
#define AVALONSTREAMINGBUS_H_
#include <systemc.h>
#include <stdlib.h>
#include "config.h"

SC_MODULE(Source){

	sc_in<bool> ready;
	sc_in_clk clk;

	sc_out<bool> valid;
	sc_out< sc_uint<DATA_BITS> > data;
	sc_out< sc_uint<ERROR_BITS> > error;
	sc_out< sc_uint<CHANNEL_BITS> > channel;

	void source_method(void) {

		if(ready.read() == true){
			data.write(rand() % 65536);
			error.write(rand() % 4);
			channel.write(rand() % MAX_CHANNEL);
			valid.write(true);
		}
		else{
			valid.write(false);
		}
	}

	SC_CTOR (Source) {
		SC_METHOD(source_method)
		sensitive << clk;
		dont_initialize();
	}
};

#endif /* AVALONSTREAMINGBUS_H_ */
