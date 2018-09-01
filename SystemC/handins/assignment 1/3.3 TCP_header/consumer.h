#ifndef CONSUMER_H_
#define CONSUMER_H_

#include <systemc.h>
#include <iostream>

SC_MODULE(consumer){
	sc_fifo_in<TCPHeader> in;

	int counter = 0;
	void consumer_thread(void) {
		while(true)
		{
			TCPHeader object;
			while (1) {
				object = in.read();
				//std::cout << "Timestamp: " << sc_time_stamp() << " - Seq: " << (int)object.SequenceNumber << std::endl;
			}
		}
	}

	SC_CTOR (consumer) {
		SC_THREAD(consumer_thread)
	}
};
#endif /* CONSUMER_H_ */
