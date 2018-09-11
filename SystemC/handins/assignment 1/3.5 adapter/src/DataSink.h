/*
 * DataSink.h
 *
 *  Created on: Sep 5, 2018
 *      Author: tihsc
 */

#ifndef DATASINK_H_
#define DATASINK_H_
#include <systemc.h>
#include <iostream>
#include <fstream>
#include "config.h"

SC_MODULE(DataSink){

	ofstream myfile;

	sc_out<sc_logic> ready;
	sc_in_clk clk;

	sc_in<sc_logic> valid;
	sc_in< sc_uint<DATA_BITS> > data;
	sc_in< sc_uint<ERROR_BITS> > error;
	sc_in< sc_uint<CHANNEL_BITS> > channel;

	sc_trace_file * tf;

	void sink_method(void) {



		if(valid.read() == SC_LOGIC_1){
			int data = this->data.read();
			int error = this->error.read();
			int channel = this->channel.read();

			ready.write(SC_LOGIC_0);

			std::cout << "Data: " << data << " - Error: " << error << " - Channel: " << channel << std::endl;
			myfile << "Data: " << data << std::endl;
		}
		else{
			ready.write(SC_LOGIC_1);
		}
	}

	SC_CTOR (DataSink) {
		SC_METHOD(sink_method)
		sensitive << clk;
		dont_initialize();

		tf = sc_create_vcd_trace_file("Waveform");
		tf->set_time_unit(1,SC_NS);
		sc_trace(tf,clk,"clock");
		sc_trace(tf,ready,"ready");
		sc_trace(tf,valid,"valid");
		sc_trace(tf,channel,"channel");
		sc_trace(tf,error,"error");
		sc_trace(tf,data,"data");

		myfile.open ("data.txt");

	}

	~DataSink(){
		sc_close_vcd_trace_file(tf);
		myfile.close();
	}
};


#endif /* DATASINK_H_ */
