#include <systemc.h>
#include "producer.h"
#include "consumer.h"
#include "tcpHeader.h"


int sc_main(int argc, char* argv[]) {

	producer my_producer("producer");
	consumer my_consumer("consumer");

	  sc_fifo<TCPHeader> C1("C1");

	  my_producer.out(C1);
	  my_consumer.in(C1);

    sc_start(2000,SC_MS);
	return 0;
}
