proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir D:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/project.cache/wt [current_project]
  set_property parent.project_path D:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/project.xpr [current_project]
  set_property ip_repo_paths d:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/project.cache/ip [current_project]
  set_property ip_output_repo d:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/project.cache/ip [current_project]
  add_files -quiet D:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/project.runs/synth_1/AES_Encrypt.dcp
  read_xdc D:/Dr.R.N.Biswas_Project_Files/Major_Project1/project/New/AES_HLS/aes_full/full/impl/verilog/AES_Encrypt.xdc
  link_design -top AES_Encrypt -part xc7a200tfbg676-2
  write_hwdef -file AES_Encrypt.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force AES_Encrypt_opt.dcp
  report_drc -file AES_Encrypt_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force AES_Encrypt_placed.dcp
  report_io -file AES_Encrypt_io_placed.rpt
  report_utilization -file AES_Encrypt_utilization_placed.rpt -pb AES_Encrypt_utilization_placed.pb
  report_control_sets -verbose -file AES_Encrypt_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force AES_Encrypt_routed.dcp
  report_drc -file AES_Encrypt_drc_routed.rpt -pb AES_Encrypt_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file AES_Encrypt_timing_summary_routed.rpt -rpx AES_Encrypt_timing_summary_routed.rpx
  report_power -file AES_Encrypt_power_routed.rpt -pb AES_Encrypt_power_summary_routed.pb -rpx AES_Encrypt_power_routed.rpx
  report_route_status -file AES_Encrypt_route_status.rpt -pb AES_Encrypt_route_status.pb
  report_clock_utilization -file AES_Encrypt_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

