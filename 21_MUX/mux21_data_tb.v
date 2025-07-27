module mux21_data_tb;

reg [1:0]I;
reg S;
wire y;

mux21_data dut (I,S,y);

initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
end

initial
   begin
    I[0]=1;
    I[1]=0;
    S=0;#10;
    $display("Output when S=%d is : %d",S,y);
    S=1;#10;
    $display("Output when S=%d is : %d",S,y);
   end 
endmodule