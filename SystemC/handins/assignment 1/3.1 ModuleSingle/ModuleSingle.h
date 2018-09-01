/*
 * ModuleSingle.h
 *
 *  Created on: Aug 30, 2018
 *      Author: tihsc
 */

#ifndef MODULESINGLE_H_
#define MODULESINGLE_H_
#include <systemc.h>
SC_MODULE(Single){
	sc_event my_event;
	sc_uint<4> counter;

	void my_thread_process(void) {

		while(true)
		{
			my_event.notify();
			wait(2,SC_MS);
		}
	}
	void my_method(void){
		counter++;
		std::cout << "counter: " << counter << " - Timestamp: " << sc_time_stamp() << std::endl;
	}
	SC_CTOR (Single) {
		counter = 0;
		SC_THREAD(my_thread_process)
			sensitive << my_event;
		SC_METHOD(my_method)
			sensitive << my_event;
	}
};
#endif /* MODULESINGLE_H_ */
