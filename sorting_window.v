`timescale 1ns / 1ps
module sorting_window(clk,i11,i12,i13,i21,i22,i23,i31,i32,i33,o11,o12,o13,o21,o22,o23,o31,o32,o33);
input [7:0]i11;
input clk;
input [7:0]i12;
input [7:0]i13;
input [7:0]i21;
input [7:0]i22;
input [7:0]i23;
input [7:0]i31;
input [7:0]i32;
input [7:0]i33;
output [7:0]o11;
output [7:0]o12;
output [7:0]o13;
output [7:0]o21;
output [7:0]o22;
output [7:0]o23;
output [7:0]o31;
output [7:0]o32;
output [7:0]o33;
wire [7:0]a11;
wire [7:0]a12;
wire [7:0]a13;
wire [7:0]a21;
wire [7:0]a22;
wire [7:0]a23;
wire [7:0]a31;
wire [7:0]a32;
wire [7:0]a33;
assign a11= (i11<i12) ? i11:i12;
assign a12= (i11>i12) ? i11:i12;
assign a13= (i13<i21) ? i13:i21;
assign a21= (i13>i21) ? i13:i21;
assign a22= (i22<i23) ? i22:i23;
assign a23= (i22>i23) ? i22:i23;
assign a31= (i31<i32) ? i31:i32;
assign a32= (i31>i32) ? i31:i32;
assign a33= i33;
wire [7:0]b11;
wire [7:0]b12;
wire [7:0]b13;
wire [7:0]b21;
wire [7:0]b22;
wire [7:0]b23;
wire [7:0]b31;
wire [7:0]b32;
wire [7:0]b33;
assign b11=(a11<a13)? a11:a13;
assign b12=(a12<a21) ? ((a12<a13) ? a12:(a11>a13) ? a11:a13):((a21<a11) ? a21:(a13>a11) ? a13:a11);
assign b13=(a12<a21) ? ((a12<a13) ? a13:(a12<a21) ? a12:a21):((a21<a11) ? a11:(a21<a12) ? a21:a12);
assign b21=(a12>a21) ? a12:a21;
assign b22=(a22<a31)? a22:a31;
assign b23=(a23<a32) ? ((a23<a31) ? a23:(a22>a31) ? a22:a31):((a32<a22) ? a32:(a31>a22) ? a31:a22);
assign b31=(a23<a32) ? ((a23<a31) ? a31:(a23<a32) ? a23:a32):((a32<a22) ? a11:(a32<a23) ? a32:a23);
assign b32=(a23>a32) ? a23:a32;
assign b33=a33;
wire [7:0]c11;
wire [7:0]c12;
wire [7:0]c13;
wire [7:0]c21;
wire [7:0]c22;
wire [7:0]c23;
wire [7:0]c31;
wire [7:0]c32;
wire [7:0]c33;
wire [3:0]d5;
assign d5[0]=(b22<b11)? 1:0;
assign d5[1]=(b22<b12)? 1:0;
assign d5[2]=(b22<b13)? 1:0;
assign d5[3]=(b22<b21)? 1:0;
assign c11=(d5[0]==1) ? b22:b11;
assign c12=(d5[0]==1) ? b11:((d5[1]==1) ? b22:b12);
assign c13=(d5[0]==1) ? b12:((d5[1]==1) ? b12:((d5[2]==1)? b22:b13));
assign c21=(d5[0]==1) ? b13:((d5[1]==1) ? b13:((d5[2]==1)? b13:((d5[3]==1)? b22:b21)));
assign c22=(d5[3]==0) ? b22:b21;
assign c23=b23;
assign c31=b31;
assign c32=b32;
assign c33=b33;
wire [7:0]d11;
wire [7:0]d12;
wire [7:0]d13;
wire [7:0]d21;
wire [7:0]d22;
wire [7:0]d23;
wire [7:0]d31;
wire [7:0]d32;
wire [7:0]d33;
wire [4:0]d6;
assign d6[0]=(c23<c11)? 1:0;
assign d6[1]=(c23<c12)? 1:0;
assign d6[2]=(c23<c13)? 1:0;
assign d6[3]=(c23<c21)? 1:0;
assign d6[4]=(c23<c22)? 1:0;
assign d11=(d6[0]==1) ? c23:c11;
assign d12=(d6[0]==1) ? c11:((d6[1]==1) ? c23:c12);
assign d13=(d6[0]==1) ? c12:((d6[1]==1) ? c12:((d6[2]==1)? c23:c13));
assign d21=(d6[0]==1) ? c13:((d6[1]==1) ? c13:((d6[2]==1)? c13:((d6[3]==1)? c23:c21)));
assign d22=(d6[0]==1) ? c21:((d6[1]==1) ? c21:((d6[2]==1)? c21:((d6[3]==1)? c21:((d6[4]==1)? c23:c22))));
assign d23=(d6[4]==0) ? c23:c22;
assign d31=c31;
assign d32=c32;
assign d33=c33;
wire [7:0]e11;
wire [7:0]e12;
wire [7:0]e13;
wire [7:0]e21;
wire [7:0]e22;
wire [7:0]e23;
wire [7:0]e31;
wire [7:0]e32;
wire [7:0]e33;
wire [5:0]d7;
assign d7[0]=(d31<d11)? 1:0;
assign d7[1]=(d31<d12)? 1:0;
assign d7[2]=(d31<d13)? 1:0;
assign d7[3]=(d31<d21)? 1:0;
assign d7[4]=(d31<d22)? 1:0;
assign d7[5]=(d31<d23)? 1:0;
assign e11=(d7[0]==1) ? d31:d11;
assign e12=(d7[0]==1) ? d11:((d7[1]==1) ? d31:d12);
assign e13=(d7[0]==1) ? d12:((d7[1]==1) ? d12:((d7[2]==1)? d31:d13));
assign e21=(d7[0]==1) ? d13:((d7[1]==1) ? d13:((d7[2]==1)? d13:((d7[3]==1)? d31:d21)));
assign e22=(d7[0]==1) ? d21:((d7[1]==1) ? d21:((d7[2]==1)? d21:((d7[3]==1)? d21:((d7[4]==1)? d31:d22))));
assign e23=(d7[0]==1) ? d22:((d7[1]==1) ? d22:((d7[2]==1)? d22:((d7[3]==1)? d22:((d7[4]==1)? d22:((d7[5]==1)? d31:d23)))));
assign e31=(d7[4]==0) ? d31:d23;
assign e32=d32;
assign e33=d33;
wire [7:0]f11;
wire [7:0]f12;
wire [7:0]f13;
wire [7:0]f21;
wire [7:0]f22;
wire [7:0]f23;
wire [7:0]f31;
wire [7:0]f32;
wire [7:0]f33;
wire [6:0]d8;
assign d8[0]=(e32<e11)? 1:0;
assign d8[1]=(e32<e12)? 1:0;
assign d8[2]=(e32<e13)? 1:0;
assign d8[3]=(e32<e21)? 1:0;
assign d8[4]=(e32<e22)? 1:0;
assign d8[5]=(e32<e23)? 1:0;
assign d8[6]=(e32<e31)? 1:0;
assign f11=(d8[0]==1) ? e32:e11;
assign f12=(d8[0]==1) ? e11:((d8[1]==1) ? e32:e12);
assign f13=(d8[0]==1) ? e12:((d8[1]==1) ? e12:((d8[2]==1)? e32:e13));
assign f21=(d8[0]==1) ? e13:((d8[1]==1) ? e13:((d8[2]==1)? e13:((d8[3]==1)? e32:e21)));
assign f22=(d8[0]==1) ? e21:((d8[1]==1) ? e21:((d8[2]==1)? e21:((d8[3]==1)? e21:((d8[4]==1)? e32:e22))));
assign f23=(d8[0]==1) ? e22:((d8[1]==1) ? e22:((d8[2]==1)? e22:((d8[3]==1)? e22:((d8[4]==1)? e22:((d8[5]==1)? e32:e23)))));
assign f31=(d8[0]==1) ? e23:((d8[1]==1) ? e23:((d8[2]==1)? e23:((d8[3]==1)? e23:((d8[4]==1)? e23:((d8[5]==1)? e23:((d8[6]==1) ? e32: e31))))));
assign f32=(d8[6]==0)? e32:e31;
assign f33=e33;
/*wire [7:0]g11;
wire [7:0]g12;
wire [7:0]g13;
wire [7:0]g21;
wire [7:0]g22;
wire [7:0]g23;
wire [7:0]g31;
wire [7:0]g32;
wire [7:0]g33;*/
wire [7:0]d9;
assign d9[0]=(f33<f11)? 1:0;
assign d9[1]=(f33<f12)? 1:0;
assign d9[2]=(f33<f13)? 1:0;
assign d9[3]=(f33<f21)? 1:0;
assign d9[4]=(f33<f22)? 1:0;
assign d9[5]=(f33<f23)? 1:0;
assign d9[6]=(f33<f31)? 1:0;
assign d9[7]=(f33<f32)? 1:0;
assign o11=(d9[0]==1) ? f33:f11;
assign o12=(d9[0]==1) ? f11:((d9[1]==1) ? f33:f12);
assign o13=(d9[0]==1) ? f12:((d9[1]==1) ? f12:((d9[2]==1)? f33:f13));
assign o21=(d9[0]==1) ? f13:((d9[1]==1) ? f13:((d9[2]==1)? f13:((d9[3]==1)? f33:f21)));
assign o22=(d9[0]==1) ? f21:((d9[1]==1) ? f21:((d9[2]==1)? f21:((d9[3]==1)? f21:((d9[4]==1)? f33:f22))));
assign o23=(d9[0]==1) ? f22:((d9[1]==1) ? f22:((d9[2]==1)? f22:((d9[3]==1)? f22:((d9[4]==1)? f22:((d9[5]==1)? f33:f23)))));
assign o31=(d9[0]==1) ? f23:((d9[1]==1) ? f23:((d9[2]==1)? f23:((d9[3]==1)? f23:((d9[4]==1)? f23:((d9[5]==1)? f23:((d9[6]==1) ? f33: f31))))));
assign o32=(d9[0]==1) ? f31:((d9[1]==1) ? f31:((d9[2]==1)? f31:((d9[3]==1)? f31:((d9[4]==1)? f31:((d9[5]==1)? f31:((d9[6]==1) ? f31: ((d9[7]==1) ? f33:f32)))))));
assign o33=(d9[7]==0) ? f33:f32;





endmodule