#include <systemc.h>
#include "AvalonStreamingBus.h"
#include "DataSink.h"
#include "config.h"

int sc_main(int argc, char* argv[]) {

	avelon Master("Master");
	DataSink Slave("Slave");

	//sc_signal<bool> ready_channel("C1");
	sc_signal<bool> vaild_channel("C2") ;

	//sc_signal<sc_int<DATA_BITS>> data_channel("C3");
	//sc_signal<sc_int<ERROR_BITS>> error_channel("C4");
	//sc_port<sc_int<CHANNEL_BITS>> channel_channel("C5");

	Master.vaild(vaild_channel);
	Slave.vaild(vaild_channel);

    sc_start(2000,SC_MS);
	return 0;
}
