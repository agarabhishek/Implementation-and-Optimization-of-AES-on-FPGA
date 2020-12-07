#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ciphertext_req_din", 1, hls_out, 3, "ap_bus", "fifo_data", 1),
	Port_Property("ciphertext_req_full_n", 1, hls_in, 3, "ap_bus", "fifo_status", 1),
	Port_Property("ciphertext_req_write", 1, hls_out, 3, "ap_bus", "fifo_update", 1),
	Port_Property("ciphertext_rsp_empty_n", 1, hls_in, 3, "ap_bus", "fifo_status", 1),
	Port_Property("ciphertext_rsp_read", 1, hls_out, 3, "ap_bus", "fifo_update", 1),
	Port_Property("ciphertext_address", 32, hls_out, 3, "ap_bus", "unknown", 1),
	Port_Property("ciphertext_datain", 8, hls_in, 3, "ap_bus", "unknown", 1),
	Port_Property("ciphertext_dataout", 8, hls_out, 3, "ap_bus", "unknown", 1),
	Port_Property("ciphertext_size", 32, hls_out, 3, "ap_bus", "unknown", 1),
	Port_Property("iv_req_din", 1, hls_out, 4, "ap_bus", "fifo_data", 1),
	Port_Property("iv_req_full_n", 1, hls_in, 4, "ap_bus", "fifo_status", 1),
	Port_Property("iv_req_write", 1, hls_out, 4, "ap_bus", "fifo_update", 1),
	Port_Property("iv_rsp_empty_n", 1, hls_in, 4, "ap_bus", "fifo_status", 1),
	Port_Property("iv_rsp_read", 1, hls_out, 4, "ap_bus", "fifo_update", 1),
	Port_Property("iv_address", 32, hls_out, 4, "ap_bus", "unknown", 1),
	Port_Property("iv_datain", 8, hls_in, 4, "ap_bus", "unknown", 1),
	Port_Property("iv_dataout", 8, hls_out, 4, "ap_bus", "unknown", 1),
	Port_Property("iv_size", 32, hls_out, 4, "ap_bus", "unknown", 1),
	Port_Property("s_axi_CRTLSc_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_AWADDR", 10, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_ARADDR", 10, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CRTLSc_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "AES_Encrypt";