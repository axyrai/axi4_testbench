`ifndef AXI_TEST_PKG_INCLUDED_
`define AXI4_TEST_PKG_INCLUDED_
package axi_master_pkg;
 `include "uvm_macros.svh"
 import uvm_pkg::*;
 import axi4_globals_pkg::*;
 import axi_env_pkg::*;
 import axi_master_pkg::*;
 import axi_sequence_pkg::*;

 `include "axi_base_test.sv"
 `include "axi_master_random_test.sv"
 `include "axi_master_read_16b_test.sv"
 `include "axi_master_read_32b_test.sv"
 `include "axi_master_read_8b_test.sv"
 `include "axi_master_write_16b_test.sv"
 `include "axi_master_write_8b_test.sv"
 `include "axi_master_write_32b_test.sv"

endpackage
`endif
