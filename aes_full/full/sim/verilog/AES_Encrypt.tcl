
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set plaintext__expandedKey__Nr__ciphertext__return_group [add_wave_group plaintext__expandedKey__Nr__ciphertext__return(axi_slave) -into $cinoutgroup]
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/interrupt -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_BRESP -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_BREADY -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_BVALID -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_RRESP -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_RDATA -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_RREADY -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_RVALID -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_ARREADY -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_ARVALID -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_ARADDR -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_WSTRB -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_WDATA -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_WREADY -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_WVALID -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_AWREADY -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_AWVALID -into $plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/s_axi_CRTLSc_AWADDR -into $plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake(internal)" -into $designtopgroup]
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_done -into $blocksiggroup
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_idle -into $blocksiggroup
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_ready -into $blocksiggroup
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_start -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_AES_Encrypt_top/AESL_inst_AES_Encrypt/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_AES_Encrypt_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_Encrypt_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_Encrypt_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_Encrypt_top/LENGTH_plaintext -into $tb_portdepth_group -radix hex
add_wave /apatb_AES_Encrypt_top/LENGTH_expandedKey -into $tb_portdepth_group -radix hex
add_wave /apatb_AES_Encrypt_top/LENGTH_ciphertext -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_plaintext__expandedKey__Nr__ciphertext__return_group [add_wave_group plaintext__expandedKey__Nr__ciphertext__return(axi_slave) -into $tbcinoutgroup]
add_wave /apatb_AES_Encrypt_top/CRTLSc_INTERRUPT -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_BRESP -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_BREADY -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_BVALID -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_RRESP -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_RDATA -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_RREADY -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_RVALID -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_ARREADY -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_ARVALID -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_ARADDR -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_WSTRB -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_WDATA -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_WREADY -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_WVALID -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_AWREADY -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_AWVALID -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -color #ffff00 -radix hex
add_wave /apatb_AES_Encrypt_top/CRTLSc_AWADDR -into $tb_plaintext__expandedKey__Nr__ciphertext__return_group -radix hex
save_wave_config AES_Encrypt.wcfg
run all
quit

