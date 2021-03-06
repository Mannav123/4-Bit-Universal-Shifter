module tb;
reg clk,reset,load,rg;
reg [1:0]ch;reg [1:0]sh;reg [3:0]in;
wire [3:0]out;
project m1(clk,reset,load,in,ch,sh,rg,out);
initial
begin
$dumpfile("proj.vcd");
$dumpvars(1,tb);
end
initial begin reset = 1'b0;end
initial begin load = 1'b1;end
initial clk = 1'b1; always #10 clk =~ clk;
initial begin
in=4'b1010;ch=2'b00;sh=2'b01;rg=1'b0;
#20 in=4'b1010;ch=2'b00;sh=2'b01;rg=1'b0;
#20 in=4'b1010;ch=2'b01;sh=2'b01;rg=1'b0;
#20 in=4'b1010;ch=2'b10;sh=2'b01;rg=1'b0;
#20 in=4'b1010;ch=2'b11;sh=2'b01;rg=1'b0;
end
initial #200 $finish;
endmodule
