module rank(a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,y,y1,y2,y3);
input [2:0]a1,b1,c1,a2,b2,c2,a3,b3,c3,d1,d2,d3;
output [1:0]y1;
wire [1:0]w16,w27;
wire[2:0]p1;
wire [5:0]p2;
wire [11:0]p3;
output [8:0]y;
wire [5:0]w1,w2,w3,w4,w5,w6,w7,w8,w9;
wire [8:0]w10,w11,w12,w13;
wire [16:0]c;
wire [5:0]w14,w15,w18,w17,w19,w20;
wire [11:0]w21,w22,w23,w25,w26;
wire [2:0]w24;

or_gate or1(a1[0],c[0],c[10]);
not_gate not1(a1[0],c[0]);
and_gate and1(a1[0],c[0],p1[0]);
and_gate and2(a1[0],c[0],p1[1]);
and_gate and3(a1[0],c[0],p1[2]);

and_gate and4(a1[0],c[0],p2[0]);
and_gate and5(a1[0],c[0],p2[1]);
and_gate and6(a1[0],c[0],p2[2]);
and_gate and7(a1[0],c[0],p2[3]);
and_gate and8(a1[0],c[0],p2[4]);
and_gate and9(a1[0],c[0],p2[5]);

and_gate and10(a1[0],c[0],p3[0]);
and_gate and11(a1[0],c[0],p3[1]);
and_gate and12(a1[0],c[0],p3[2]);
and_gate and13(a1[0],c[0],p3[3]);
and_gate and14(a1[0],c[0],p3[4]);
and_gate and15(a1[0],c[0],p3[5]);
and_gate and16(a1[0],c[0],p3[6]);
and_gate and17(a1[0],c[0],p3[7]);
and_gate and18(a1[0],c[0],p3[8]);
and_gate and19(a1[0],c[0],p3[9]);
and_gate and20(a1[0],c[0],p3[10]);
and_gate and21(a1[0],c[0],p3[11]);

multiplier_3_bit multiplier1(b2,c3,w1);
multiplier_3_bit multiplier2(b3,c2,w2);
multiplier_3_bit multiplier3(a2,c3,w3);
multiplier_3_bit multiplier4(c2,a3,w4);
multiplier_3_bit multiplier5(a2,b3,w5);
multiplier_3_bit multiplier6(a3,b2,w6);

subtration_6_bit sub1(w1,w2,w7);
subtration_6_bit sub2(w3,w4,w8);
subtration_6_bit sub3(w5,w6,w9);

multiplier_6x3_bit multiplier7(w7,a1,w10);
multiplier_6x3_bit multiplier8(w8,b1,w11);
multiplier_6x3_bit multiplier9(w9,c1,w12);

adder_9_bit adder1(w10,w12,w13);
subtration_9_bit sub4(w13,w11,y);
//det;

equal_3_bit equal1(a1,p1,c[1]);
equal_3_bit equal2(b1,p1,c[2]);
equal_3_bit equal3(c1,p1,c[3]);
and_gate and32(c[1],c[3],c[4]);
and_gate and31(c[4],c[2],c[5]);

multiplier_3_bit multiplier10(a1,b2,w17);
multiplier_3_bit multiplier11(a2,b1,w18);
subtration_6_bit sub40(w17,w18,w14);

multiplier_3_bit multiplier12(a1,c2,w19);
multiplier_3_bit multiplier13(a2,c1,w20);
subtration_6_bit sub5(w19,w20,w15);

// ✅ Fixed: Changed c2 to p2 for proper comparison
equal_6_bit equal4(w14,p2,c[6]);
equal_6_bit equal5(w15,p2,c[7]);
and_gate and41(c[6],c[7],c[8]);

multiplier_9x3_bit multiplier1411(w10,a1,w21);
multiplier_9x3_bit multiplier140(w12,a1,w22);
subtration_3_bit sub6(a3,a1,w24);
multiplier_9x3_bit multiplier141(w11,w24,w23);
adder_12_bit add5(w21,w22,w25);
adder_12_bit add6(w25,w23,w26);

equal_12_bit equal6(w26,p3,c[9]);

adder_1_bit add7(c[9],c[8],c[5],w16[0],w16[1]);
adder_1_bit add17(c[10],c[10],c[10],w27[0],w27[1]);
subtration_2_bit sub27(w27,w16,y1);
//rank;

equal_3_bit equal30(p1,d1,c[11]);

wire [5:0]w28,w29,w30;
multiplier_3_bit multiplier34(a1,d2,w28);
multiplier_3_bit multiplier35(a2,d1,w29);
subtration_6_bit sub48(w28,w29,w30);
equal_6_bit equal34(p2,w30,c[12]);

wire [11:0]w31,w32,w43;
wire [5:0]w33,w34,w38,w39;
wire [8:0]w35,w36,w37,w40,w41,w42;
multiplier_3_bit mulitiplier120(a1,c2,w33);
multiplier_3_bit mulitiplier121(a3,c2,w34);
multiplier_6x3_bit mulitiplier122(w33,d3,w35);
multiplier_6x3_bit mulitiplier123(w34,d2,w36);
subtration_9_bit subb1(w35,w36,w37);
multiplier_9x3_bit mulitiplier124(w37,a1,w31);

multiplier_3_bit mulitiplier125(a3,c1,w38);
multiplier_3_bit mulitiplier126(a1,c1,w39);
multiplier_6x3_bit mulitiplier127(w38,d1,w40);
multiplier_6x3_bit mulitiplier128(w39,d3,w41);
subtration_9_bit subb2(w40,w41,w42);
multiplier_9x3_bit mulitiplier129(w42,a2,w32);
adder_12_bit addd(w32,w31,w43);

equal_12_bit equall(p3,w43,c[13]);

and_gate andd(c[5],c[11],c[14]);
and_gate andd1(c[8],c[12],c[15]);
and_gate andd2(c[9],c[13],c[16]);
wire [1:0]w45;
adder_1_bit add171(c[14],c[15],c[16],w45[0],w45[1]);
output [1:0]y2;
subtration_2_bit sub271(w27,w45,y2);

wire [1:0] w49,w51;
wire w50,w52;
subtration_2_bit sub2712(w27,w16,w49);
equal_2_bit equall12(w27,w49,w50);
subtration_2_bit sub2711(w27,w45,w51);
equal_2_bit equall13(w49,w51,w52);
output [1:0]y3;
adder_1_bit add1713(w50,w52,c[0],y3[0],y3[1]);

endmodule

module multiplier_6x3_bit(a,b,y);
input [5:0]a;
input [2:0]b;
output [8:0]y;
wire [5:0]w1,w2,w3;
wire [22:0]c;
wire w4; // ✅ Fixed: Added missing wire declaration

not_gate not1(a[0],w4);
and_gate and1(w4,a[0],c[0]);
or_gate or1(w4,a[0],c[22]);

and_gate and2(a[0],b[0],w1[0]);
adder_1_bit add1(w1[0],c[0],c[0],y[0],c[1]);

and_gate and3(a[1],b[0],w1[1]);
and_gate and4(a[0],b[1],w2[0]);
adder_1_bit add2(w1[1],w2[0],c[1],y[1],c[2]);

and_gate and5(a[2],b[0],w1[2]);
and_gate and6(a[1],b[1],w2[1]);
nand_gate nand1(a[0],b[2],w3[0]);
adder_1_bit add3(w1[2],w2[1],c[2],c[3],c[4]);
adder_1_bit add4(w3[0],c[3],c[22],y[2],c[5]);

and_gate and7(a[3],b[0],w1[3]);
and_gate and8(a[2],b[1],w2[2]);
nand_gate nand2(a[1],b[2],w3[1]);
adder_1_bit add5(w1[3],w2[2],c[4],c[6],c[7]);
adder_1_bit add6(w3[1],c[6],c[5],y[3],c[8]);

and_gate and9(a[4],b[0],w1[4]);
and_gate and10(a[3],b[1],w2[3]);
nand_gate nand3(a[2],b[2],w3[2]);
adder_1_bit add7(w1[4],w2[3],c[7],c[9],c[10]);
adder_1_bit add8(w3[2],c[9],c[8],y[4],c[11]);

nand_gate nand11(a[5],b[0],w1[5]);
and_gate and12(a[4],b[1],w2[4]);
nand_gate nand4(a[3],b[2],w3[3]);
adder_1_bit add9(w1[5],w2[4],c[10],c[12],c[13]);
adder_1_bit add10(w3[3],c[12],c[11],c[14],c[15]);
adder_1_bit add11(c[14],c[22],c[0],y[5],c[16]);

nand_gate nand13(a[5],b[1],w2[5]);
nand_gate nand5(a[4],b[2],w3[4]);
adder_1_bit add12(w2[5],w3[4],c[13],c[17],c[18]);
adder_1_bit add13(c[15],c[16],c[17],y[6],c[19]);

and_gate and13(a[5],b[2],w3[5]);
adder_1_bit add14(w3[5],c[18],c[19],y[7],c[20]);
adder_1_bit add15(c[22],c[20],c[0],y[8],c[21]);
endmodule

module adder_9_bit(a,b,y);
input [8:0]a,b;
output [8:0]y;
wire w1;
wire [9:0]c;

not_gate not1(a[0],w1);
and_gate and1(w1,a[0],c[0]);

adder_1_bit add1(a[0],b[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],b[1],c[1],y[1],c[2]);
adder_1_bit add3(a[2],b[2],c[2],y[2],c[3]);
adder_1_bit add4(a[3],b[3],c[3],y[3],c[4]);
adder_1_bit add5(a[4],b[4],c[4],y[4],c[5]);
adder_1_bit add6(a[5],b[5],c[5],y[5],c[6]);
adder_1_bit add7(a[6],b[6],c[6],y[6],c[7]);
adder_1_bit add8(a[7],b[7],c[7],y[7],c[8]);
adder_1_bit add9(a[8],b[8],c[8],y[8],c[9]);
endmodule

module subtration_6_bit(a,b,y);
input [5:0]a,b;
output [5:0]y;
wire w1;
wire [5:0]d;
wire [6:0]c;
not_gate not1(b[0],d[0]);
not_gate not2(b[1],d[1]);
not_gate not3(b[2],d[2]);
not_gate not4(b[3],d[3]);
not_gate not5(b[4],d[4]);
not_gate not6(b[5],d[5]);

not_gate not8(a[0],w1);
or_gate or1(w1,a[0],c[0]);

adder_1_bit add1(a[0],d[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],d[1],c[1],y[1],c[2]);
adder_1_bit add3(a[2],d[2],c[2],y[2],c[3]);
adder_1_bit add4(a[3],d[3],c[3],y[3],c[4]);
adder_1_bit add5(a[4],d[4],c[4],y[4],c[5]);
adder_1_bit add6(a[5],d[5],c[5],y[5],c[6]);
endmodule

module equal_9_bit(a,b,y);
input [8:0]a,b;
output y;
wire [8:0]w;
wire [4:0]w1;
wire [2:0]w2;
wire [1:0]w3;
wire w4;
xnor_gate xnor1(a[0],b[0],w[0]);
xnor_gate xnor2(a[1],b[1],w[1]);
xnor_gate xnor3(a[2],b[2],w[2]);
xnor_gate xnor4(a[3],b[3],w[3]);
xnor_gate xnor5(a[4],b[4],w[4]);
xnor_gate xnor6(a[5],b[5],w[5]);
xnor_gate xnor7(a[6],b[6],w[6]);
xnor_gate xnor8(a[7],b[7],w[7]);
xnor_gate xnor9(a[8],b[8],w[8]);
and_gate and1(w[0],w[1],w1[0]);
and_gate and2(w[2],w[3],w1[1]);
and_gate and3(w[4],w[5],w1[2]);
and_gate and4(w[6],w[7],w1[3]);
and_gate and5(w[8],w[0],w1[4]);
and_gate and6(w1[0],w1[1],w2[0]);
and_gate and7(w1[2],w1[3],w2[1]);
and_gate and8(w1[4],w1[0],w2[2]);
and_gate and9(w2[0],w2[1],w3[0]);
and_gate and10(w2[2],w2[0],w3[1]);
and_gate and11(w3[0],w3[1],w4);
endmodule

module multiplier_3_bit(a,b,y);
input [2:0]a,b;
output [5:0]y;
wire [2:0]w1,w2,w3;
wire [11:0]c;
wire w4,w5;

not_gate not1(a[0],w4);
and_gate and6(w4,a[0],c[0]);
or_gate or1(w4,a[0],c[10]);

and_gate and1(a[0],b[0],w1[0]);
and_gate and2(a[1],b[0],w1[1]);
and_gate and3(a[0],b[1],w2[0]);
nand_gate nand1(a[2],b[0],w1[2]);
and_gate and4(a[1],b[1],w2[1]);
nand_gate nand2(a[1],b[2],w3[0]);
nand_gate nand3(a[2],b[1],w2[2]);
nand_gate nand4(a[1],b[2],w3[1]);
and_gate and5(a[2],b[2],w3[2]);

adder_1_bit add1(w1[0],c[0],c[0],y[0],c[1]);
adder_1_bit add2(w1[1],w2[0],c[1],y[1],c[2]);
adder_1_bit add3(w1[2],w2[1],c[2],c[3],c[4]);
adder_1_bit add4(w3[0],c[3],c[0],y[2],c[5]);
adder_1_bit add5(w2[2],w3[1],c[4],c[6],c[7]);
adder_1_bit add6(c[6],c[10],c[5],y[3],c[8]);
adder_1_bit add7(w3[2],c[7],c[8],y[4],c[9]);
adder_1_bit add8(c[9],c[10],c[0],y[5],c[11]);
endmodule

module multiplier_9x3_bit(a,b,y);
input [8:0]a;
input [2:0]b;
output [11:0]y;
wire [8:0]w1,w2,w3;
wire [31:0]c;
wire w4; // ✅ Fixed: Added missing wire declaration

not_gate not1(a[0],w4);
and_gate and1(w4,a[0],c[0]);
or_gate or1(w4,a[0],c[31]);

and_gate and2(a[0],b[0],w1[0]);
adder_1_bit add1(w1[0],c[0],c[0],y[0],c[1]);

and_gate and3(a[1],b[0],w1[1]);
and_gate and4(a[0],b[1],w2[0]);
adder_1_bit add2(c[1],w1[1],w2[0],y[1],c[2]);

and_gate and5(a[2],b[0],w1[2]);
and_gate and6(a[1],b[1],w2[1]);
nand_gate nand1(a[0],b[2],w3[0]);
adder_1_bit add3(c[2],w1[2],w2[1],c[3],c[4]);
adder_1_bit add4(c[3],w3[0],c[31],y[2],c[5]);

and_gate and7(a[3],b[0],w1[3]);
and_gate and8(a[2],b[1],w2[2]);
nand_gate nand2(a[1],b[2],w3[1]);
adder_1_bit add5(c[4],w1[3],w2[2],c[6],c[7]);
adder_1_bit add6(c[6],c[5],w3[1],y[3],c[8]);

and_gate and9(a[4],b[0],w1[4]);
and_gate and10(a[3],b[1],w2[3]);
nand_gate nand3(a[2],b[2],w3[2]);
adder_1_bit add7(c[7],w1[4],w2[3],c[9],c[10]);
adder_1_bit add8(c[9],c[8],w3[2],y[4],c[11]);

and_gate and11(a[5],b[0],w1[5]);
and_gate and12(a[4],b[1],w2[4]);
nand_gate nand4(a[3],b[2],w3[3]);
adder_1_bit add9(c[10],w1[5],w2[4],c[12],c[13]);
adder_1_bit add10(c[11],c[12],w3[3],y[5],c[14]);

and_gate and13(a[6],b[0],w1[6]);
and_gate and14(a[5],b[1],w2[5]);
nand_gate nand5(a[4],b[2],w3[4]);
adder_1_bit add11(c[13],w1[6],w2[5],c[15],c[16]);
adder_1_bit add12(c[14],c[15],w3[4],y[6],c[17]);

and_gate and15(a[7],b[0],w1[7]);
and_gate and16(a[6],b[1],w2[6]);
nand_gate nand6(a[5],b[2],w3[5]);
adder_1_bit add13(c[16],w1[7],w2[6],c[18],c[19]);
adder_1_bit add14(c[17],c[18],w3[5],y[7],c[20]);

nand_gate nand7(a[8],b[0],w1[8]);
and_gate and17(a[7],b[1],w2[7]);
nand_gate nand8(a[6],b[2],w3[6]);
adder_1_bit add15(c[19],w1[8],w2[7],c[21],c[22]);
adder_1_bit add16(c[21],c[20],w3[6],c[23],c[24]);
adder_1_bit add17(c[23],c[31],c[0],y[8],c[25]);

nand_gate nand9(a[8],b[1],w2[8]);
nand_gate nand10(a[7],b[2],w3[7]);
adder_1_bit add18(c[22],w2[8],w3[7],c[26],c[27]);
adder_1_bit add19(c[24],c[25],c[26],y[9],c[28]);

and_gate and18(a[8],b[2],w3[8]);
adder_1_bit add20(c[27],w3[8],c[28],y[10],c[29]);
adder_1_bit add21(c[29],c[31],c[0],y[11],c[30]);
endmodule

module subtration_9_bit(a,b,y);
input [8:0]a,b;
output [8:0]y;
wire w1;
wire [8:0]d;
wire [9:0]c;

not_gate not1(b[0],d[0]);
not_gate not2(b[1],d[1]);
not_gate not3(b[2],d[2]);
not_gate not4(b[3],d[3]);
not_gate not5(b[4],d[4]);
not_gate not6(b[5],d[5]);
not_gate not7(b[6],d[6]);
not_gate not9(b[7],d[7]);
not_gate not10(b[8],d[8]);

not_gate not8(a[0],w1);
or_gate or1(w1,a[0],c[0]);

adder_1_bit add1(a[0],d[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],d[1],c[1],y[1],c[2]);
adder_1_bit add3(a[2],d[2],c[2],y[2],c[3]);
adder_1_bit add4(a[3],d[3],c[3],y[3],c[4]);
adder_1_bit add5(a[4],d[4],c[4],y[4],c[5]);
adder_1_bit add6(a[5],d[5],c[5],y[5],c[6]);
adder_1_bit add7(a[6],d[6],c[6],y[6],c[7]);
adder_1_bit add8(a[7],d[7],c[7],y[7],c[8]);
adder_1_bit add9(a[8],d[8],c[8],y[8],c[9]);
endmodule

module or_gate(a,b,y);
input a,b;
output y;
or(y,a,b);
endmodule

module not_gate(a,y);
input a;
output y;
not(y,a);
endmodule

module adder_1_bit(a,b,c,sum,carry);
input a,b,c;
wire w1,w2,w3,w4,w5;
output sum,carry;
xor_gate xor1(a,b,w1),xor2(w1,c,sum);
and_gate and1(a,b,w2),and2(b,c,w3),and3(a,c,w4);
or_gate or1(w2,w3,w5),or2(w5,w4,carry);
endmodule

module equal_2_bit(a,b,y);
input [1:0]a,b;
output y;
wire [1:0]w;

xnor_gate xnor1(a[0],b[0],w[0]);
xnor_gate xnor2(a[1],b[1],w[1]);
and_gate and1(w[0],w[1],y);
endmodule

module xnor_gate(a,b,y);
input a,b;
wire w1,w2,w3,w4; // ✅ Fixed: Added missing wire w4
output y;
and(w1,a,b);
or(w2,a,b);
not(w3,w1);
and(w4,w2,w3);
not(y,w4);
endmodule

module equal_12_bit(a,b,y);
input [11:0]a,b;
output y;
wire [11:0]c1;
wire [9:0]w;
xnor_gate and1(a[0],b[0],c1[0]);
xnor_gate and2(a[1],b[1],c1[1]);
xnor_gate and3(a[2],b[2],c1[2]);
xnor_gate and4(a[3],b[3],c1[3]);
xnor_gate and5(a[4],b[4],c1[4]); // ✅ Fixed: Changed b[5] to b[4]
xnor_gate and6(a[5],b[5],c1[5]);
xnor_gate and7(a[6],b[6],c1[6]);
xnor_gate and8(a[7],b[7],c1[7]);
xnor_gate and9(a[8],b[8],c1[8]);
xnor_gate and10(a[9],b[9],c1[9]);
xnor_gate and11(a[10],b[10],c1[10]);
xnor_gate and12(a[11],b[11],c1[11]);

and_gate and13(c1[0],c1[1],w[0]);
and_gate and14(c1[2],c1[3],w[1]);
and_gate and15(c1[4],c1[5],w[2]);
and_gate and16(c1[6],c1[7],w[3]);
and_gate and17(c1[8],c1[9],w[4]);
and_gate and18(c1[10],c1[11],w[5]);

and_gate and19(w[0],w[1],w[6]);
and_gate and20(w[2],w[3],w[7]);
and_gate and21(w[4],w[5],w[8]);
and_gate and22(w[6],w[7],w[9]);
and_gate and23(w[9],w[8],y);
endmodule

module adder_12_bit(a,b,y);
input [11:0]a,b;
output [11:0]y;
wire w1;
wire [12:0]c;

not_gate not1(a[0],w1);
and_gate and1(w1,a[0],c[0]);

adder_1_bit add1(a[0],b[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],b[1],c[1],y[1],c[2]);
adder_1_bit add3(a[2],b[2],c[2],y[2],c[3]);
adder_1_bit add4(a[3],b[3],c[3],y[3],c[4]);
adder_1_bit add5(a[4],b[4],c[4],y[4],c[5]);
adder_1_bit add6(a[5],b[5],c[5],y[5],c[6]);
adder_1_bit add7(a[6],b[6],c[6],y[6],c[7]);
adder_1_bit add8(a[7],b[7],c[7],y[7],c[8]);
adder_1_bit add9(a[8],b[8],c[8],y[8],c[9]);
adder_1_bit add10(a[9],b[9],c[9],y[9],c[10]);
adder_1_bit add11(a[10],b[10],c[10],y[10],c[11]);
adder_1_bit add12(a[11],b[11],c[11],y[11],c[12]);
endmodule

module equal_3_bit(a,b,y);
input [2:0]a,b;
output y;
wire [3:0]w;

xnor_gate xnor1(a[0],b[0],w[0]);
xnor_gate xnor2(a[1],b[1],w[1]);
xnor_gate xnor3(a[2],b[2],w[2]);
and_gate and1(w[0],w[1],w[3]);
and_gate and2(w[3],w[2],y);
endmodule

module nand_gate(a,b,y);
input a,b;
output y;
wire w;
and_gate and1(a,b,w);
not_gate not1(w,y);
endmodule

module equal_4_bit(a,b,y);
input [3:0]a,b;
output y;
wire [5:0]w;

xnor_gate xnor1(a[0],b[0],w[0]);
xnor_gate xnor2(a[1],b[1],w[1]);
xnor_gate xnor3(a[2],b[2],w[2]);
xnor_gate xnor4(a[3],b[3],w[3]);

and_gate and1(w[0],w[1],w[4]);
and_gate and2(w[2],w[3],w[5]);
and_gate and3(w[4],w[5],y);
endmodule

module xor_gate(a,b,y);
input a,b;
wire w1,w2,w3;
output y;
and(w1,a,b);
or(w2,a,b);
not(w3,w1);
and(y,w2,w3);
endmodule

module subtration_2_bit(a,b,y);
input [1:0]a,b;
output [1:0]y;
wire w1;
wire [1:0]d;
wire [2:0]c;
not_gate not1(b[0],d[0]);
not_gate not2(b[1],d[1]);

not_gate not8(a[0],w1);
or_gate or1(w1,a[0],c[0]);

adder_1_bit add1(a[0],d[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],d[1],c[1],y[1],c[2]);
endmodule

module subtration_3_bit(a,b,y);
input [2:0]a,b;
output [2:0]y;
wire w1;
wire [2:0]d;
wire [3:0]c;
not_gate not1(b[0],d[0]);
not_gate not2(b[1],d[1]);
not_gate not3(b[2],d[2]);

not_gate not8(a[0],w1);
or_gate or1(w1,a[0],c[0]);

adder_1_bit add1(a[0],d[0],c[0],y[0],c[1]);
adder_1_bit add2(a[1],d[1],c[1],y[1],c[2]);
adder_1_bit add3(a[2],d[2],c[2],y[2],c[3]);
endmodule

module equal_6_bit(a,b,y);
input [5:0]a,b;
output y;
wire [9:0]w;
xnor_gate xnor1(a[0],b[0],w[0]);
xnor_gate xnor2(a[1],b[1],w[1]);
xnor_gate xnor3(a[2],b[2],w[2]);
xnor_gate xnor4(a[3],b[3],w[3]);
xnor_gate xnor5(a[4],b[4],w[4]);
xnor_gate xnor6(a[5],b[5],w[5]);

and_gate and1(w[0],w[1],w[6]);
and_gate and2(w[2],w[3],w[7]);
and_gate and3(w[4],w[5],w[8]);
and_gate and4(w[6],w[7],w[9]);
and_gate and5(w[9],w[8],y);
endmodule

module and_gate(a,b,y);
input a,b;
output y;
and(y,a,b);
endmodule
