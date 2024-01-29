//--------------------------------------------------------------------------------------------
// Class: axi_master_read_8b_test
//  Extends the base test and starts the sequence of 8 bit read
//--------------------------------------------------------------------------------------------
class axi_master_read_8b_test extends axi_base_test;
  `uvm_component_utils(axi_master_read_8b_test)
  
  //Variable: axi_master_read_8b_transfer_h
  //Instantiation of axi_master_read_8b_transfer
  axi_master_read_8b_transfer  axi_master_read_8b_transfer_h; 

//--------------------------------------------------------------------------------------------
// Construct: new
//
// Parameters:
//  name - axi_master_read_8b_test
//  parent - parent under which this component is created
//--------------------------------------------------------------------------------------------
function new(string name = "apb_16b_read_test",uvm_component parent = null);
  super.new(name, parent);
endfunction : new

//--------------------------------------------------------------------------------------------
// Task: run_phase
//  Creates the axi_master_read_8b_transfer sequence and starts the 8b read sequences
//
// Parameters:
//  phase - uvm phase
//--------------------------------------------------------------------------------------------
task run_phase(uvm_phase phase);
  
  super.run_phase(phase);
  axi_master_read_8b_transfer_h = axi_master_read_8b_transfer::type_id::create("axi_master_read_8b_transfer_h");
  `uvm_info(get_type_name(),$sformatf("axi_master_read_8b_test"),UVM_LOW);
  phase.raise_objection(this);
  axi_master_read_8b_transfer_h .start(axi_master_env_h.axi_master_agt_h.axi_master_seqr_h);
  phase.drop_objection(this);

endtask : run_phase

endclass : axi_master_read_8b_test



