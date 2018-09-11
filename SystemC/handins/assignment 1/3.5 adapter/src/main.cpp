#include <systemc.h>
#include "AvalonStreamingBus.h"
#include "DataSink.h"
#include "config.h"
#include "adapter.h"

int sc_main(int argc, char* argv[]) {

	Source Master("Master");
	DataSink Slave("Slave");
	InAdapter<int> inAdapt("instAdapter");

	sc_clock clock("clock", sc_time(CLK_PERIODE, SC_NS) ); // 50 MHz

	sc_signal<sc_logic> reset;
	sc_signal<sc_logic> ready_channel("C1");
	sc_signal<sc_logic> valid_channel("C2") ;

	sc_signal<sc_uint<DATA_BITS> >  data_channel("C3");
	sc_signal<sc_uint<ERROR_BITS> > error_channel("C4");
	sc_signal<sc_uint<CHANNEL_BITS> > channel_channel("C5");

	reset = SC_LOGIC_0; // Reset release

	Master.out(inAdapt);

	inAdapt.valid(valid_channel);
	inAdapt.data(data_channel);
	inAdapt.ready(ready_channel);
	inAdapt.error(error_channel);
	inAdapt.channel(channel_channel);
	inAdapt.clock(clock);
	inAdapt.reset(reset);


	Slave.valid(valid_channel);
	Slave.data(data_channel);
	Slave.ready(ready_channel);
	Slave.error(error_channel);
	Slave.channel(channel_channel);
	Slave.clk(clock);


    sc_start(2000,SC_NS);
	return 0;
}
