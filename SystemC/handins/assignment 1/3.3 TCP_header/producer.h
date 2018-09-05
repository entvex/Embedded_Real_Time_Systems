#ifndef PRODUCER_H_
#define PRODUCER_H_
#include <systemc.h>
#include <stdlib.h>
#include <iostream>
#include "tcpHeader.h"
SC_MODULE(producer){
	sc_port<sc_fifo_out_if<TCPHeader*>,0> out;
	int min = 2;
	int max = 10;
	int counter = 0;

	void producer_thread(void) {
		while(true)
		{
			int random = rand() % min+max;
			wait(random,SC_MS);
			TCPHeader* newpacket = new TCPHeader();
			counter++;
			newpacket->SequenceNumber = counter;

			for(int i = 0; i < out.size(); i++)
			{
				out[i]->write(newpacket);
			}
		}
	}

	SC_CTOR (producer) {
		SC_THREAD(producer_thread)
	}
};
#endif /* PRODUCER_H_ */
