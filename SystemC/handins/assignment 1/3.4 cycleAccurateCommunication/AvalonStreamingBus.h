/*
 * AvalonStreamingBus.h
 *
 *  Created on: Sep 5, 2018
 *      Author: tihsc
 */

#ifndef AVALONSTREAMINGBUS_H_
#define AVALONSTREAMINGBUS_H_
#include <systemc.h>
#include "config.h"

SC_MODULE(avelon){

	//sc_in<bool> ready;
	//sc_in_clk CLK;

	sc_out<bool> vaild;
	//sc_out<sc_int<DATA_BITS>> data;
	//sc_out<sc_int<ERROR_BITS>> error;
	//sc_port<sc_int<CHANNEL_BITS>,0> channel;

	void avelon_thread(void) {
		while(true)
		{
			while (1) {

				vaild.write(true);
				wait();
				//data.write(2);
				//error.write(1);

			}
		}
	}

	SC_CTOR (avelon) {
		SC_THREAD(avelon_thread)
		//sensitive_pos << CLK;
	}
};

#endif /* AVALONSTREAMINGBUS_H_ */
