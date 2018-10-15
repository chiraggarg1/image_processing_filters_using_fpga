`timescale 1ns / 1ps
module ip_tb();
reg clk = 0;
reg[7:0] mem[14999:0];
reg[7:0] datain;
integer i,f;
wire [7:0] i11;
wire [7:0] i12;
wire [7:0] i13;
wire [7:0] i21;
wire [7:0] i22;
wire [7:0] i23;
wire [7:0] i31;
wire [7:0] i32;
wire [7:0] i33;
wire [7:0] o11;
wire [7:0] o12;
wire [7:0] o13;
wire [7:0] o21;
wire [7:0] o22;
wire [7:0] o23;
wire [7:0] o31;
wire [7:0] o32;
wire [7:0] o33;
initial begin
$readmemb("",mem);
end
initial begin
for(i = 0;i<15000;i = i+1) begin
#10 datain[7:0] = mem[i];
clk = 1;
#10 clk = 0;
end
end
window  uut(clk,datain,i11,i12,i13,i21,i22,i23,i31,i32,i33);
sorting_window abc(clk,i11,i12,i13,i21,i22,i23,i31,i32,i33,o11,o12,o13,o21,o22,o23,o31,o32,o33);
initial begin
#10
f = $fopen("C:\\Users\\Ishan Jindal\\Desktop\\blabl.txt","w");
#10
$fwrite(f,"%b",o11);
#10
$fclose(f);
end
endmodule
