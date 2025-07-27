module mux21_data(input [1:0] I, input S, output y);
assign y= S ? I[1] : I[0];	// if S=1 then out=I[1] else out=I[0]
endmodule