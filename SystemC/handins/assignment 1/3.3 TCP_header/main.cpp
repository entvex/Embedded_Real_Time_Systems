#include <systemc.h>
#include "producer.h"
#include "consumer.h"
#include "tcpHeader.h"


int sc_main(int argc, char* argv[]) {

	producer my_producer("producer");
	consumer my_consumer1("consumer1");
	consumer my_consumer2("consumer2");

	sc_fifo<TCPHeader*> C1("C1");
	sc_fifo<TCPHeader*> C2("C2");

	my_producer.out(C1);
	my_producer.out(C2);

	my_consumer1.in(C1);
	my_consumer2.in(C2);

    sc_start(2000,SC_MS);
	return 0;
}
