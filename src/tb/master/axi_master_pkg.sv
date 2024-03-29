`ifndef AXI_MASTER_PKG_INCLUDED_
`define AXI_MASTER_PKG_INCLUDED_
package axi_master_pkg;
  `include "uvm_macros.svh"
 // `include "../../globals/axi_globals_pkg.sv"
  import uvm_pkg::*;
  import axi4_globals_pkg::*;
  
  `include "axi_master_transaction.sv"
  `include "axi_master_driver.sv"
  `include "axi_master_monitor.sv"
  `include "axi_master_sequencer.sv"
  `include "axi_master_agent.sv"


  
endpackage
`endif
