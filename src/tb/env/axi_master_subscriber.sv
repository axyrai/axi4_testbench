class axi_master_subscriber extends uvm_subscriber#(axi_master_transaction);
  `uvm_component_utils(axi_master_subscriber)

  uvm_analysis_imp#(axi_master_transaction, axi_master_subscriber) sub_export;
  axi_master_transaction packet;
  
  covergroup cg;
   arsize:coverpoint packet.s_axi_arlen;

  endgroup

  extern function new(string name="axi_master_subscriber",uvm_component parent);
  extern function void write(axi_master_transaction tx);

endclass

function axi_master_subscriber::new(string name="axi_master_subscriber", uvm_component parent);
  super.new(name, parent);
  sub_export= new("sub_export",this);
  packet = axi_master_transaction::type_id::create("packet");
  cg=new();
endfunction : new

function void axi_master_subscriber::write(axi_master_transaction t);
  packet = t;
  cg.sample();
  $display("Coverage = %0d ", cg.get_coverage());
endfunction
