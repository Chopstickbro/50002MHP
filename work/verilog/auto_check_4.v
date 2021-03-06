/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module auto_check_4 (
    input toggle,
    input rst,
    output reg a,
    output reg b,
    output reg c
  );
  
  
  
  reg [2:0] M_output_counter_d, M_output_counter_q = 1'h0;
  
  always @* begin
    M_output_counter_d = M_output_counter_q;
    
    a = M_output_counter_q[2+0-:1];
    b = M_output_counter_q[1+0-:1];
    c = M_output_counter_q[0+0-:1];
    M_output_counter_d = M_output_counter_q + 1'h1;
  end
  
  always @(posedge toggle) begin
    if (rst == 1'b1) begin
      M_output_counter_q <= 1'h0;
    end else begin
      M_output_counter_q <= M_output_counter_d;
    end
  end
  
endmodule
