set C_TypeInfoList {{ 
"AES_Encrypt" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"newState": [[], {"array": [ {"scalar": "unsigned char"}, [16]]}] }, {"expandedKey": [[], {"array": [ {"scalar": "unsigned char"}, [176]]}] }, {"Nr": [[], {"scalar": "unsigned short"}] }, {"ciphertext": [[], {"array": [ {"scalar": "unsigned char"}, [16]]}] }, {"iv": [[], {"array": [ {"scalar": "unsigned char"}, [16]]}] }],[],""]
}}
set moduleName AES_Encrypt
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {AES_Encrypt}
set C_modelType { void 0 }
set C_modelArgList {
	{ newState int 8 regular {axi_slave 0}  }
	{ expandedKey int 8 regular {axi_slave 0}  }
	{ Nr uint 16 unused {axi_slave 0}  }
	{ ciphertext int 8 regular {bus 1}  }
	{ iv int 8 regular {bus 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "newState", "interface" : "axi_slave", "bundle":"CRTLSc","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "newState","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "expandedKey", "interface" : "axi_slave", "bundle":"CRTLSc","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "expandedKey","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 175,"step" : 1}]}]}], "offset" : {"in":256}, "offset_end" : {"in":511}} , 
 	{ "Name" : "Nr", "interface" : "axi_slave", "bundle":"CRTLSc","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "Nr","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":512}, "offset_end" : {"in":519}} , 
 	{ "Name" : "ciphertext", "interface" : "bus", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "ciphertext","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "iv", "interface" : "bus", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "iv","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ciphertext_req_din sc_out sc_logic 1 signal 3 } 
	{ ciphertext_req_full_n sc_in sc_logic 1 signal 3 } 
	{ ciphertext_req_write sc_out sc_logic 1 signal 3 } 
	{ ciphertext_rsp_empty_n sc_in sc_logic 1 signal 3 } 
	{ ciphertext_rsp_read sc_out sc_logic 1 signal 3 } 
	{ ciphertext_address sc_out sc_lv 32 signal 3 } 
	{ ciphertext_datain sc_in sc_lv 8 signal 3 } 
	{ ciphertext_dataout sc_out sc_lv 8 signal 3 } 
	{ ciphertext_size sc_out sc_lv 32 signal 3 } 
	{ iv_req_din sc_out sc_logic 1 signal 4 } 
	{ iv_req_full_n sc_in sc_logic 1 signal 4 } 
	{ iv_req_write sc_out sc_logic 1 signal 4 } 
	{ iv_rsp_empty_n sc_in sc_logic 1 signal 4 } 
	{ iv_rsp_read sc_out sc_logic 1 signal 4 } 
	{ iv_address sc_out sc_lv 32 signal 4 } 
	{ iv_datain sc_in sc_lv 8 signal 4 } 
	{ iv_dataout sc_out sc_lv 8 signal 4 } 
	{ iv_size sc_out sc_lv 32 signal 4 } 
	{ s_axi_CRTLSc_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_AWADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_CRTLSc_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CRTLSc_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CRTLSc_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_ARADDR sc_in sc_lv 10 signal -1 } 
	{ s_axi_CRTLSc_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CRTLSc_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CRTLSc_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CRTLSc_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CRTLSc_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CRTLSc", "role": "AWADDR" },"address":[{"name":"AES_Encrypt","role":"start","value":"0","valid_bit":"0"},{"name":"AES_Encrypt","role":"continue","value":"0","valid_bit":"4"},{"name":"AES_Encrypt","role":"auto_start","value":"0","valid_bit":"7"},{"name":"newState","role":"data","value":"16"},{"name":"expandedKey","role":"data","value":"256"},{"name":"Nr","role":"data","value":"512"}] },
	{ "name": "s_axi_CRTLSc_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "AWVALID" } },
	{ "name": "s_axi_CRTLSc_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "AWREADY" } },
	{ "name": "s_axi_CRTLSc_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "WVALID" } },
	{ "name": "s_axi_CRTLSc_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "WREADY" } },
	{ "name": "s_axi_CRTLSc_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLSc", "role": "WDATA" } },
	{ "name": "s_axi_CRTLSc_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CRTLSc", "role": "WSTRB" } },
	{ "name": "s_axi_CRTLSc_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "CRTLSc", "role": "ARADDR" },"address":[{"name":"AES_Encrypt","role":"start","value":"0","valid_bit":"0"},{"name":"AES_Encrypt","role":"done","value":"0","valid_bit":"1"},{"name":"AES_Encrypt","role":"idle","value":"0","valid_bit":"2"},{"name":"AES_Encrypt","role":"ready","value":"0","valid_bit":"3"},{"name":"AES_Encrypt","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CRTLSc_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "ARVALID" } },
	{ "name": "s_axi_CRTLSc_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "ARREADY" } },
	{ "name": "s_axi_CRTLSc_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "RVALID" } },
	{ "name": "s_axi_CRTLSc_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "RREADY" } },
	{ "name": "s_axi_CRTLSc_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CRTLSc", "role": "RDATA" } },
	{ "name": "s_axi_CRTLSc_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLSc", "role": "RRESP" } },
	{ "name": "s_axi_CRTLSc_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "BVALID" } },
	{ "name": "s_axi_CRTLSc_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "BREADY" } },
	{ "name": "s_axi_CRTLSc_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CRTLSc", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CRTLSc", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ciphertext_req_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "req_din" }} , 
 	{ "name": "ciphertext_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "req_full_n" }} , 
 	{ "name": "ciphertext_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "req_write" }} , 
 	{ "name": "ciphertext_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "rsp_empty_n" }} , 
 	{ "name": "ciphertext_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ciphertext", "role": "rsp_read" }} , 
 	{ "name": "ciphertext_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ciphertext", "role": "address" }} , 
 	{ "name": "ciphertext_datain", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "datain" }} , 
 	{ "name": "ciphertext_dataout", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ciphertext", "role": "dataout" }} , 
 	{ "name": "ciphertext_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ciphertext", "role": "size" }} , 
 	{ "name": "iv_req_din", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv", "role": "req_din" }} , 
 	{ "name": "iv_req_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv", "role": "req_full_n" }} , 
 	{ "name": "iv_req_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv", "role": "req_write" }} , 
 	{ "name": "iv_rsp_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv", "role": "rsp_empty_n" }} , 
 	{ "name": "iv_rsp_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "iv", "role": "rsp_read" }} , 
 	{ "name": "iv_address", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iv", "role": "address" }} , 
 	{ "name": "iv_datain", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "iv", "role": "datain" }} , 
 	{ "name": "iv_dataout", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "iv", "role": "dataout" }} , 
 	{ "name": "iv_size", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iv", "role": "size" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7"], "CDFG" : "AES_Encrypt", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "newState", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "expandedKey", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "Nr", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "ciphertext", "Type" : "Bus", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "iv", "Type" : "Bus", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_AES_Encrypt_MixColumns_fu_294", "Port" : "cipher"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st17_fsm_14", "FSM" : "ap_CS_fsm", "SubInst" : "grp_AES_Encrypt_MixColumns_fu_294"},
		{"State" : "ap_ST_st15_fsm_12", "FSM" : "ap_CS_fsm", "SubInst" : "grp_AES_Encrypt_ShiftRows_fu_301"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.cipher_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.AES_Encrypt_CRTLSc_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AES_Encrypt_MixColumns_fu_294", "Parent" : "0", "Child" : ["5", "6"], "CDFG" : "AES_Encrypt_MixColumns", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "cipher", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_Encrypt_MixColumns_fu_294.cipher_U", "Parent" : "4", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_Encrypt_MixColumns_fu_294.tmp_state_U", "Parent" : "4", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AES_Encrypt_ShiftRows_fu_301", "Parent" : "0", "Child" : ["8"], "CDFG" : "AES_Encrypt_ShiftRows", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "state", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AES_Encrypt_ShiftRows_fu_301.tmp_state_U", "Parent" : "7", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2047", "Max" : "2667"}
	, {"Name" : "Interval", "Min" : "2048", "Max" : "2668"}
]}

set Spec2ImplPortList { 
	ciphertext { ap_bus {  { ciphertext_req_din fifo_data 1 1 }  { ciphertext_req_full_n fifo_status 0 1 }  { ciphertext_req_write fifo_update 1 1 }  { ciphertext_rsp_empty_n fifo_status 0 1 }  { ciphertext_rsp_read fifo_update 1 1 }  { ciphertext_address unknown 1 32 }  { ciphertext_datain unknown 0 8 }  { ciphertext_dataout unknown 1 8 }  { ciphertext_size unknown 1 32 } } }
	iv { ap_bus {  { iv_req_din fifo_data 1 1 }  { iv_req_full_n fifo_status 0 1 }  { iv_req_write fifo_update 1 1 }  { iv_rsp_empty_n fifo_status 0 1 }  { iv_rsp_read fifo_update 1 1 }  { iv_address unknown 1 32 }  { iv_datain unknown 0 8 }  { iv_dataout unknown 1 8 }  { iv_size unknown 1 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ ciphertext 1 }
	{ iv 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ ciphertext 1 }
	{ iv 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
