/*
 * ModuleDouble.h
 *
 *  Created on: Aug 30, 2018
 *      Author: tihsc
 */
#ifndef MODULEDOUBLE_H_
#define MODULEDOUBLE_H_

#include <systemc.h>
SC_MODULE(moduleDouble){

	sc_event event_a;
	sc_event event_b;
	sc_event event_a_ack;
	sc_event event_b_ack;

	bool event_tracker;

	void my_threadA(void) {

		while(true)
		{
			wait(3,SC_MS);
			event_a.notify();
			wait(3,SC_MS,event_a_ack);
		}
	}

	void my_threadB(void) {

		while(true)
		{
			wait(2,SC_MS);
			event_b.notify();
			wait(2,SC_MS,event_b_ack);
		}
	}

	void my_methodA(void){

		if(event_tracker)
		{
				std::cout << "Timestamp: " << sc_time_stamp() << " - event: A" <<  std::endl;
				event_a_ack.notify();
				event_tracker = false;
				// When the method is called next time it must be by event_b
				next_trigger(event_b);
		} else
		{
				std::cout << "Timestamp: " << sc_time_stamp() << " - event: B" <<  std::endl;
				event_b_ack.notify();
				event_tracker = true;
				// When the method is called next time it must be by event_a
				next_trigger(event_a);
		}

	}
	SC_CTOR (moduleDouble) {

		SC_THREAD(my_threadA)
		sensitive << event_a_ack;
		SC_THREAD(my_threadB)
		sensitive << event_b_ack;
		SC_METHOD(my_methodA)
		sensitive << event_a << event_b;
		dont_initialize();
	}
};
#endif /* MODULEDOUBLE_H_ */
