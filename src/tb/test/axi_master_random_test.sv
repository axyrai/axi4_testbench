class axi_master_random_test extends axi_base_test;
  `uvm_component_utils(axi_master_random_test)

  // instantiation of the handle 
  
  axi_master_random_sequence  axi_master_random_seq_h; 

  // Factory registeration
  
  function new(string name = "axi_master_random_test",uvm_component parent = null);
  super.new(name, parent);
endfunction : new

  // task for run phase

 task run_phase(uvm_phase phase);
  
  super.run_phase(phase);
   axi_master_random_seq_h = axi_master_random_sequence::type_id::create("axi_master_random_seq_h");
   `uvm_info(get_type_name(),$sformatf("axi_master_random_test"),UVM_LOW);
  phase.raise_objection(this);
   axi_master_random_seq_h .start(axi_master_env_h.axi_master_agt_h.axi_master_seqr_h);
  phase.drop_objection(this);

endtask : run_phase

  endclass     

