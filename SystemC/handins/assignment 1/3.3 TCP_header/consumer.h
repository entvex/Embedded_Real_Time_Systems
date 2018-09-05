#ifndef CONSUMER_H_
#define CONSUMER_H_
#include <systemc.h>
#include <iostream>
#include "tcpHeader.h"

SC_MODULE(consumer){
	sc_fifo_in<TCPHeader*> in;

	void consumer_thread(void) {
		while(true)
		{
			while (1) {
				TCPHeader* object = in->read();
				std::cout << "Timestamp: " << sc_time_stamp() << " - Seq: " << object->SequenceNumber << " " << name() << std::endl;
			}
		}
	}

	SC_CTOR (consumer) {
		SC_THREAD(consumer_thread)
	}
};
#endif /* CONSUMER_H_ */
