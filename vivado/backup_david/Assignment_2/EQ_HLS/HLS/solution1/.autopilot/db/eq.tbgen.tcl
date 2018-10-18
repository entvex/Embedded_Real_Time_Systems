set C_TypeInfoList {{ 
"eq" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"b0": [[], {"scalar": "int"}] }, {"b1": [[], {"scalar": "int"}] }, {"b2": [[], {"scalar": "int"}] }, {"a1": [[], {"scalar": "int"}] }, {"a2": [[], {"scalar": "int"}] }, {"band": [[], {"scalar": "short"}] }, {"sampleIn": [[], {"scalar": "short"}] }, {"sampleOut": [[],{ "pointer":  {"scalar": "short"}}] }],[],""]
}}
set moduleName eq
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eq}
set C_modelType { void 0 }
set C_modelArgList {
	{ b0 int 32 regular {axi_slave 0}  }
	{ b1 int 32 regular {axi_slave 0}  }
	{ b2 int 32 regular {axi_slave 0}  }
	{ a1 int 32 regular {axi_slave 0}  }
	{ a2 int 32 regular {axi_slave 0}  }
	{ band int 16 regular {axi_slave 0}  }
	{ sampleIn int 16 regular {axi_slave 0}  }
	{ sampleOut int 16 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "b0", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b0","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "b1", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "b2", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "a1", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a1","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "a2", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a2","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "band", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "band","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "sampleIn", "interface" : "axi_slave", "bundle":"eqio","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sampleIn","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "sampleOut", "interface" : "axi_slave", "bundle":"eqio","type":"ap_vld","bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "sampleOut","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":72}, "offset_end" : {"out":79}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_eqio_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_eqio_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_eqio_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_eqio_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_eqio_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_eqio_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_eqio_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_eqio_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_eqio_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_eqio_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_eqio_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_eqio_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_eqio_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_eqio_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_eqio_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_eqio_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_eqio_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_eqio_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "eqio", "role": "AWADDR" },"address":[{"name":"eq","role":"start","value":"0","valid_bit":"0"},{"name":"eq","role":"continue","value":"0","valid_bit":"4"},{"name":"eq","role":"auto_start","value":"0","valid_bit":"7"},{"name":"b0","role":"data","value":"16"},{"name":"b1","role":"data","value":"24"},{"name":"b2","role":"data","value":"32"},{"name":"a1","role":"data","value":"40"},{"name":"a2","role":"data","value":"48"},{"name":"band","role":"data","value":"56"},{"name":"sampleIn","role":"data","value":"64"}] },
	{ "name": "s_axi_eqio_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "AWVALID" } },
	{ "name": "s_axi_eqio_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "AWREADY" } },
	{ "name": "s_axi_eqio_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "WVALID" } },
	{ "name": "s_axi_eqio_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "WREADY" } },
	{ "name": "s_axi_eqio_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eqio", "role": "WDATA" } },
	{ "name": "s_axi_eqio_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "eqio", "role": "WSTRB" } },
	{ "name": "s_axi_eqio_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "eqio", "role": "ARADDR" },"address":[{"name":"eq","role":"start","value":"0","valid_bit":"0"},{"name":"eq","role":"done","value":"0","valid_bit":"1"},{"name":"eq","role":"idle","value":"0","valid_bit":"2"},{"name":"eq","role":"ready","value":"0","valid_bit":"3"},{"name":"eq","role":"auto_start","value":"0","valid_bit":"7"},{"name":"sampleOut","role":"data","value":"72"}, {"name":"sampleOut","role":"valid","value":"76","valid_bit":"0"}] },
	{ "name": "s_axi_eqio_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "ARVALID" } },
	{ "name": "s_axi_eqio_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "ARREADY" } },
	{ "name": "s_axi_eqio_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "RVALID" } },
	{ "name": "s_axi_eqio_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "RREADY" } },
	{ "name": "s_axi_eqio_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "eqio", "role": "RDATA" } },
	{ "name": "s_axi_eqio_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "eqio", "role": "RRESP" } },
	{ "name": "s_axi_eqio_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "BVALID" } },
	{ "name": "s_axi_eqio_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "BREADY" } },
	{ "name": "s_axi_eqio_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "eqio", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "eqio", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "eq",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "b0", "Type" : "None", "Direction" : "I"},
			{"Name" : "b1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b2", "Type" : "None", "Direction" : "I"},
			{"Name" : "a1", "Type" : "None", "Direction" : "I"},
			{"Name" : "a2", "Type" : "None", "Direction" : "I"},
			{"Name" : "band", "Type" : "None", "Direction" : "I"},
			{"Name" : "sampleIn", "Type" : "None", "Direction" : "I"},
			{"Name" : "sampleOut", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x1_fix", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x2_fix", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y1_fix", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "y2_fix", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.coeff_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x1_fix_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x2_fix_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y1_fix_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y2_fix_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_eqio_s_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_mul_16s_32s_32_2_U0", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_mul_16s_32s_32_2_U1", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_mul_16s_32s_32_2_U2", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_mul_17s_32s_32_2_U3", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eq_mul_17s_32s_32_2_U4", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	eq {
		b0 {Type I LastRead 0 FirstWrite -1}
		b1 {Type I LastRead 0 FirstWrite -1}
		b2 {Type I LastRead 0 FirstWrite -1}
		a1 {Type I LastRead 0 FirstWrite -1}
		a2 {Type I LastRead 0 FirstWrite -1}
		band {Type I LastRead 0 FirstWrite -1}
		sampleIn {Type I LastRead 0 FirstWrite -1}
		sampleOut {Type O LastRead -1 FirstWrite 3}
		coeff {Type IO LastRead -1 FirstWrite -1}
		x1_fix {Type IO LastRead -1 FirstWrite -1}
		x2_fix {Type IO LastRead -1 FirstWrite -1}
		y1_fix {Type IO LastRead -1 FirstWrite -1}
		y2_fix {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "51"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "52"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
