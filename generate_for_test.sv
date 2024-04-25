interface intf_t #(num_clients = 0);
bit [num_clients-1:0] req;
for (genvar i=0; i< num_clients; i++) begin: mps
modport client_mp (output .client_req( req[i] ));
end
endinterface