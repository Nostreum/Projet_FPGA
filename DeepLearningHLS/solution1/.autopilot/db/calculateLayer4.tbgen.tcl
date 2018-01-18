set C_TypeInfoList {{ 
"calculateLayer4" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"Layer3_Neurons_CPU_hls": [[], {"array": ["0", [1250]]}] }, {"Layer3_Weights_CPU_hls": [[], {"array": ["0", [1250]]}] }, {"Layer4_Neurons_CPU_hls": [[], {"array": ["0", [100]]}] }],[],""], 
"0": [ "uint16_t", {"typedef": [[[], {"scalar": "unsigned short"}],""]}]
}}
set moduleName calculateLayer4
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {calculateLayer4}
set C_modelType { void 0 }
set C_modelArgList {
	{ Layer3_Neurons_CPU_hls int 16 regular {array 1250 { 1 1 } 1 1 }  }
	{ Layer3_Weights_CPU_hls int 16 regular {array 1250 { 1 1 } 1 1 }  }
	{ Layer4_Neurons_CPU_hls int 16 regular {array 100 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Layer3_Neurons_CPU_hls", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Layer3_Neurons_CPU_hls","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 1249,"step" : 1}]}]}]} , 
 	{ "Name" : "Layer3_Weights_CPU_hls", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Layer3_Weights_CPU_hls","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 1249,"step" : 1}]}]}]} , 
 	{ "Name" : "Layer4_Neurons_CPU_hls", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Layer4_Neurons_CPU_hls","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Layer3_Neurons_CPU_hls_address0 sc_out sc_lv 11 signal 0 } 
	{ Layer3_Neurons_CPU_hls_ce0 sc_out sc_logic 1 signal 0 } 
	{ Layer3_Neurons_CPU_hls_q0 sc_in sc_lv 16 signal 0 } 
	{ Layer3_Neurons_CPU_hls_address1 sc_out sc_lv 11 signal 0 } 
	{ Layer3_Neurons_CPU_hls_ce1 sc_out sc_logic 1 signal 0 } 
	{ Layer3_Neurons_CPU_hls_q1 sc_in sc_lv 16 signal 0 } 
	{ Layer3_Weights_CPU_hls_address0 sc_out sc_lv 11 signal 1 } 
	{ Layer3_Weights_CPU_hls_ce0 sc_out sc_logic 1 signal 1 } 
	{ Layer3_Weights_CPU_hls_q0 sc_in sc_lv 16 signal 1 } 
	{ Layer3_Weights_CPU_hls_address1 sc_out sc_lv 11 signal 1 } 
	{ Layer3_Weights_CPU_hls_ce1 sc_out sc_logic 1 signal 1 } 
	{ Layer3_Weights_CPU_hls_q1 sc_in sc_lv 16 signal 1 } 
	{ Layer4_Neurons_CPU_hls_address0 sc_out sc_lv 7 signal 2 } 
	{ Layer4_Neurons_CPU_hls_ce0 sc_out sc_logic 1 signal 2 } 
	{ Layer4_Neurons_CPU_hls_we0 sc_out sc_logic 1 signal 2 } 
	{ Layer4_Neurons_CPU_hls_d0 sc_out sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "address0" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "ce0" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "q0" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "address1" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "ce1" }} , 
 	{ "name": "Layer3_Neurons_CPU_hls_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Layer3_Neurons_CPU_hls", "role": "q1" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "address0" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "ce0" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "q0" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "address1" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "ce1" }} , 
 	{ "name": "Layer3_Weights_CPU_hls_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Layer3_Weights_CPU_hls", "role": "q1" }} , 
 	{ "name": "Layer4_Neurons_CPU_hls_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "Layer4_Neurons_CPU_hls", "role": "address0" }} , 
 	{ "name": "Layer4_Neurons_CPU_hls_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer4_Neurons_CPU_hls", "role": "ce0" }} , 
 	{ "name": "Layer4_Neurons_CPU_hls_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Layer4_Neurons_CPU_hls", "role": "we0" }} , 
 	{ "name": "Layer4_Neurons_CPU_hls_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Layer4_Neurons_CPU_hls", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44"],
		"CDFG" : "calculateLayer4",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "Layer3_Neurons_CPU_hls", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "Layer3_Weights_CPU_hls", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "Layer4_Neurons_CPU_hls", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "hls_cordic_hyperb_t", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_sinh_cosh_range_redu_fu_676", "Port" : "hls_cordic_hyperb_t"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sinh_cosh_range_redu_fu_676"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676", "Parent" : "0", "Child" : ["2", "3", "5", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "sinh_cosh_range_redu",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "t_in", "Type" : "None", "Direction" : "I"},
		{"Name" : "hls_cordic_hyperb_t", "Type" : "Memory", "Direction" : "I"}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_big_mult_v3small_fu_227"},
		{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_big_mult_v3small_1_fu_232"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.hls_cordic_hyperb_t_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.grp_big_mult_v3small_fu_227", "Parent" : "1", "Child" : ["4"],
		"CDFG" : "big_mult_v3small",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.grp_big_mult_v3small_fu_227.calculateLayer4_mbkb_U0", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.grp_big_mult_v3small_1_fu_232", "Parent" : "1", "Child" : ["6"],
		"CDFG" : "big_mult_v3small_1",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "a_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.grp_big_mult_v3small_1_fu_232.calculateLayer4_mcud_U2", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_feOg_U4", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_ffYi_U5", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_fg8j_U6", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_fg8j_U7", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_fg8j_U8", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_fg8j_U9", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_shbi_U10", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_shbi_U11", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sinh_cosh_range_redu_fu_676.calculateLayer4_sibs_U12", "Parent" : "1"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_fjbC_U15", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_fkbM_U16", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_dlbW_U17", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_sibs_x_U18", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U19", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U20", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U21", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U22", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U23", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U24", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U25", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U26", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U27", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U28", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U29", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U30", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U31", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U32", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U33", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U34", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U35", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U36", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U37", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U38", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U39", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U40", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U41", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U42", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.calculateLayer4_mmb6_U43", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "90301", "Max" : "1075301"}
	, {"Name" : "Interval", "Min" : "90302", "Max" : "1075302"}
]}

set Spec2ImplPortList { 
	Layer3_Neurons_CPU_hls { ap_memory {  { Layer3_Neurons_CPU_hls_address0 mem_address 1 11 }  { Layer3_Neurons_CPU_hls_ce0 mem_ce 1 1 }  { Layer3_Neurons_CPU_hls_q0 mem_dout 0 16 }  { Layer3_Neurons_CPU_hls_address1 mem_address 1 11 }  { Layer3_Neurons_CPU_hls_ce1 mem_ce 1 1 }  { Layer3_Neurons_CPU_hls_q1 mem_dout 0 16 } } }
	Layer3_Weights_CPU_hls { ap_memory {  { Layer3_Weights_CPU_hls_address0 mem_address 1 11 }  { Layer3_Weights_CPU_hls_ce0 mem_ce 1 1 }  { Layer3_Weights_CPU_hls_q0 mem_dout 0 16 }  { Layer3_Weights_CPU_hls_address1 mem_address 1 11 }  { Layer3_Weights_CPU_hls_ce1 mem_ce 1 1 }  { Layer3_Weights_CPU_hls_q1 mem_dout 0 16 } } }
	Layer4_Neurons_CPU_hls { ap_memory {  { Layer4_Neurons_CPU_hls_address0 mem_address 1 7 }  { Layer4_Neurons_CPU_hls_ce0 mem_ce 1 1 }  { Layer4_Neurons_CPU_hls_we0 mem_we 1 1 }  { Layer4_Neurons_CPU_hls_d0 mem_din 1 16 } } }
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
