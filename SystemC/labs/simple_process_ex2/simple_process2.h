/*
 * SIMPLE_PROCESS2_H
 *
 */

#ifndef SIMPLE_PROCESS2_H
#define SIMPLE_PROCESS2_H

#include <systemc.h>
SC_MODULE (SIMPLE_PROCESS2) {
	sc_fifo_in<int> in;

	void my_thread_process(void) {

	  std::cout << "my_thread_process executed within "
			    << name()
	            << std::endl;

		int value;
		while (1) {
			value = in.read();
			std::cout << value << std::endl;
		}

	}
	SC_CTOR (SIMPLE_PROCESS2) {
		SC_THREAD(my_thread_process);
	}
};

#endif /* SIMPLE_PROCESS2_H */
