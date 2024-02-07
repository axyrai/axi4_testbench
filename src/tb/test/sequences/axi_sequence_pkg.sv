package axi_sequence_pkg;
  `include "uvm_macros.svh"
  import uvm_pkg::*;
  import axi4_globals_pkg::*;
  import axi_master_pkg::*;

  `include "axi_master_base_sequence.sv"
  `include "axi_master_random_sequence.sv"
  `include "axi_master_read_8b_transfer.sv"
  `include "axi_master_read_16b_transfer.sv"
  `include "axi_master_read_32b_transfer.sv"
  `include "axi_master_write_8b_transfer.sv"
  `include "axi_master_write_16b_transfer.sv"
  `include "axi_master_write_32b_transfer.sv"
  `include "axi_master_write_read_32b_transfer.sv"
endpackage  
