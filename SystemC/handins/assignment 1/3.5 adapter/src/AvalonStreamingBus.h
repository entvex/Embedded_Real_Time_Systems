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

	sc_fifo_out<int> out;


	void source_thread(void) {

		while(true){
			out.write(rand() % 65536);
			//std::cout << "I am in da Meister" << std::endl;
			wait(40,SC_NS);
		}

	}

	SC_CTOR (Source) {
		SC_THREAD(source_thread)
	}
};

#endif /* AVALONSTREAMINGBUS_H_ */
