#include <systemc.h>
#include "AvalonStreamingBus.h"
#include "DataSink.h"
#include "config.h"

int sc_main(int argc, char* argv[]) {

	Source Master("Master");
	DataSink Slave("Slave");

	sc_clock clock("clock", sc_time(CLK_PERIODE, SC_NS) ); // 50 MHz

	sc_signal<bool> ready_channel("C1");
	sc_signal<bool> valid_channel("C2") ;

	sc_signal<sc_uint<DATA_BITS> >  data_channel("C3");
	sc_signal<sc_uint<ERROR_BITS> > error_channel("C4");
	sc_signal<sc_uint<CHANNEL_BITS> > channel_channel("C5");

	Master.valid(valid_channel);
	Master.data(data_channel);
	Master.ready(ready_channel);
	Master.error(error_channel);
	Master.channel(channel_channel);
	Master.clk(clock);

	Slave.valid(valid_channel);
	Slave.data(data_channel);
	Slave.ready(ready_channel);
	Slave.error(error_channel);
	Slave.channel(channel_channel);
	Slave.clk(clock);


    sc_start(2000,SC_NS);
	return 0;
}
