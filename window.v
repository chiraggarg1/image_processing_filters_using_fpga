`timescale 1ns / 1ps
module window(clk,datain,o11,o12,o13,o21,o22,o23,o31,o32,o33);
input [7:0] datain;
input  clk;
integer count;
reg data_valid;
output reg[7:0] o11;
output reg[7:0] o12;
output reg[7:0] o13;
output reg[7:0] o21;
output reg[7:0] o22;
output reg[7:0] o23;
output reg[7:0] o31;
output reg[7:0] o32;
output reg[7:0] o33;
reg [7:0]a11;
reg [7:0]a12;
reg [7:0]a13;
reg [7:0]a21;
reg [7:0]a22;
reg [7:0]a23;
reg [7:0]a31;
reg [7:0]a32;
reg [7:0]a33;
reg [7:0]da;
reg [7:0]qa;
 reg emptya;
  reg fulla;
reg rda;
reg wra;
fifo fa(da,qa,emptya,fulla,rda,wra,clk);
reg [7:0]db;
reg [7:0]qb;
 reg emptyb;
  reg fullb;
reg rdb;
reg wrb;
fifo fb(db,qb,emptyb,fullb,rdb,wrb,clk);
initial begin
da=0;
rda=0;
count=0;
wra=0;
db=0;
rdb=0;
wrb=0;
end
always @(posedge clk)
begin
if(count==3)
begin
wra=1;
end
if(count==100)
begin
rda=1;
end
if(count==103)
begin
wrb=1;
end
if(count==200)
begin
rdb=1;
end
da=a13;
db=a23;
a11=datain;
a12=a11;
a13=a12;
a21=qa;
a22=a21;
a23=a22;
a31=qb;
a32=a31;
a33=a32;
o11=a11;
o12=a12;
o13=a13;
o21=a21;
o22=a22;
o23=a23;
o31=a31;
o32=a32;
o33=a33;
count=count+1;
end
endmodule
