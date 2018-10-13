`timescale 1ns / 1ps
module fifo(d,q,empty,full,rd,wr,clk);
input [7:0]d;
input clk;
output reg empty;
output reg full;
input rd;
input wr;
 integer front;
integer endq;
output reg [7:0]q; 
reg [7:0] r[0:97];
reg [7:0]r1;
reg [7:0]r2;
reg [7:0]r3;
reg [7:0]r4;
reg [7:0]r5;
reg [7:0]r6;
reg [7:0]r7;
reg [7:0]r8;
reg [7:0]r9;
reg [7:0]r10;
reg [7:0]r11;
reg [7:0]r12;
reg [7:0]r13;
reg [7:0]r14;
reg [7:0]r15;
reg [7:0]r16;
reg [7:0]r17;
reg [7:0]r18;
reg [7:0]r19;
reg [7:0]r20;
reg [7:0]r21;
reg [7:0]r22;
reg [7:0]r23;
reg [7:0]r24;
reg [7:0]r25;
reg [7:0]r26;
reg [7:0]r27;
reg [7:0]r28;
reg [7:0]r29;
reg [7:0]r30;
reg [7:0]r31;
reg [7:0]r32;
reg [7:0]r33;
reg [7:0]r34;
reg [7:0]r35;
reg [7:0]r36;
reg [7:0]r37;
reg [7:0]r38;
reg [7:0]r39;
reg [7:0]r40;
reg [7:0]r41;
reg [7:0]r42;
reg [7:0]r43;
reg [7:0]r44;
reg [7:0]r45;
reg [7:0]r46;
reg [7:0]r47;
reg [7:0]r48;
reg [7:0]r49;
reg [7:0]r50;
reg [7:0]r51;
reg [7:0]r52;
reg [7:0]r53;
reg [7:0]r54;
reg [7:0]r55;
reg [7:0]r56;
reg [7:0]r57;
reg [7:0]r58;
reg [7:0]r59;
reg [7:0]r60;
reg [7:0]r61;
reg [7:0]r62;
reg [7:0]r63;
reg [7:0]r64;
reg [7:0]r65;
reg [7:0]r66;
reg [7:0]r67;
reg [7:0]r68;
reg [7:0]r69;
reg [7:0]r70;
reg [7:0]r71;
reg [7:0]r72;
reg [7:0]r73;
reg [7:0]r74;
reg [7:0]r75;
reg [7:0]r76;
reg [7:0]r77;
reg [7:0]r78;
reg [7:0]r79;
reg [7:0]r80;
reg [7:0]r81;
reg [7:0]r82;
reg [7:0]r83;
reg [7:0]r84;
reg [7:0]r85;
reg [7:0]r86;
reg [7:0]r87;
reg [7:0]r88;
reg [7:0]r89;
reg [7:0]r90;
reg [7:0]r91;
reg [7:0]r92;
reg [7:0]r93;
reg [7:0]r94;
reg [7:0]r95;
reg [7:0]r96;
reg [7:0]r97;
initial begin
front=0;
endq=0;
end
always@(posedge clk)
begin


if(wr==1)
begin
if((front==endq)|(endq==1))
begin
r1=d;
front=front+1;
end
else if(front<97)
begin
r97=r96;
r96=r95;
r95=r94;
r94=r93;
r93=r92;
r92=r91;
r91=r90;
r90=r89;
r89=r88;
r88=r87;
r87=r86;
r86=r85;
r85=r84;
r84=r83;
r83=r82;
r82=r81;
r81=r80;
r80=r79;
r79=r78;
r78=r77;
r77=r76;
r76=r75;
r75=r74;
r74=r73;
r73=r72;
r72=r71;
r71=r70;
r70=r69;
r69=r68;
r68=r67;
r67=r66;
r66=r65;
r65=r64;
r64=r63;
r63=r62;
r62=r61;
r61=r60;
r60=r59;
r59=r58;
r58=r57;
r57=r56;
r56=r55;
r55=r54;
r54=r53;
r53=r52;
r52=r51;
r51=r49;
r49=r48;
r48=r47;
r47=r46;
r46=r45;
r45=r44;
r44=r43;
r43=r42;
r42=r41;
r41=r40;
r40=r39;
r39=r38;
r38=r37;
r37=r36;
r36=r35;
r35=r34;
r34=r33;
r33=r32;
r32=r31;
r31=r30;
r30=r29;
r29=r28;
r28=r27;
r27=r26;
r26=r25;
r25=r24;
r24=r23;
r23=r22;
r22=r21;
r21=r20;
r20=r19;
r19=r18;
r18=r17;
r17=r16;
r16=r15;
r15=r14;
r14=r13;
r13=r12;
r12=r11;
r11=r10;
r10=r9;
r9=r8;
r8=r7;
r7=r6;
r6=r5;
r5=r4;
r4=r3;
r3=r2;
r2=r1;
r1=d;
front=front+1;
end

end
if(front==97)
begin
full=1; 
end
if(rd==1)
begin
q=r97;
r97=r96;
r96=r95;
r95=r94;
r94=r93;
r93=r92;
r92=r91;
r91=r90;
r90=r89;
r89=r88;
r88=r87;
r87=r86;
r86=r85;
r85=r84;
r84=r83;
r83=r82;
r82=r81;
r81=r80;
r80=r79;
r79=r78;
r78=r77;
r77=r76;
r76=r75;
r75=r74;
r74=r73;
r73=r72;
r72=r71;
r71=r70;
r70=r69;
r69=r68;
r68=r67;
r67=r66;
r66=r65;
r65=r64;
r64=r63;
r63=r62;
r62=r61;
r61=r60;
r60=r59;
r59=r58;
r58=r57;
r57=r56;
r56=r55;
r55=r54;
r54=r53;
r53=r52;
r52=r51;
r51=r49;
r49=r48;
r48=r47;
r47=r46;
r46=r45;
r45=r44;
r44=r43;
r43=r42;
r42=r41;
r41=r40;
r40=r39;
r39=r38;
r38=r37;
r37=r36;
r36=r35;
r35=r34;
r34=r33;
r33=r32;
r32=r31;
r31=r30;
r30=r29;
r29=r28;
r28=r27;
r27=r26;
r26=r25;
r25=r24;
r24=r23;
r23=r22;
r22=r21;
r21=r20;
r20=r19;
r19=r18;
r18=r17;
r17=r16;
r16=r15;
r15=r14;
r14=r13;
r13=r12;
r12=r11;
r11=r10;
r10=r9;
r9=r8;
r8=r7;
r7=r6;
r6=r5;
r5=r4;
r4=r3;
r3=r2;
r2=r1;
endq=1;
end
if(front==0)
begin
empty=1;
end
end





                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        `timescale 1ns / 1ps



endmodule