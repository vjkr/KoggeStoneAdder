// Code your design here
// Code your design here
module kogge(input [15:0] A, input [15:0] B, input Cin, output[15:0] S, output Cout);

  wire [1:0] r1c16, r1c15, r1c14, r1c13, r1c12, r1c11, r1c10, r1c9;
  wire [1:0] r1c8, r1c7, r1c6, r1c5, r1c4, r1c3, r1c2, r1c1;
    
  pg16 pg16_1(.A(A), .B(B), .pg15(r1c16),.pg14(r1c15),.pg13(r1c14),
        .pg12(r1c13),.pg11(r1c12),.pg10(r1c11),.pg9(r1c10),.pg8(r1c9),
        .pg7(r1c8),.pg6(r1c7),.pg5(r1c6),.pg4(r1c5),.pg3(r1c4),
        .pg2(r1c3),.pg1(r1c2),.pg0(r1c1));


/* FIRST ROW */
    wire r2c1;  
    wire [1:0]  r2c2, r2c3,  r2c4,  r2c5,  r2c6,  r2c7,  r2c8,  r2c9,  r2c10,  r2c11,  r2c12,  r2c13,  r2c14,  r2c15;
    GrayCell blockr1c1(.pg(r1c1), .pg0(Cin), .pgo(r2c1));

    BlackCell blockr1c2(.pg(r1c2), .pg0(r1c1), .pgo(r2c2));
    BlackCell blockr1c3(.pg(r1c3), .pg0(r1c2), .pgo(r2c3));
    BlackCell blockr1c4(.pg(r1c4), .pg0(r1c3), .pgo(r2c4));
    BlackCell blockr1c5(.pg(r1c5), .pg0(r1c4), .pgo(r2c5));
    BlackCell blockr1c6(.pg(r1c6), .pg0(r1c5), .pgo(r2c6));
    BlackCell blockr1c7(.pg(r1c7), .pg0(r1c6), .pgo(r2c7));
    BlackCell blockr1c8(.pg(r1c8), .pg0(r1c7), .pgo(r2c8));
    BlackCell blockr1c9(.pg(r1c9), .pg0(r1c8), .pgo(r2c9));
    BlackCell blockr1c10(.pg(r1c10), .pg0(r1c9), .pgo(r2c10));
    BlackCell blockr1c11(.pg(r1c11), .pg0(r1c10), .pgo(r2c11));
    BlackCell blockr1c12(.pg(r1c12), .pg0(r1c11), .pgo(r2c12));
    BlackCell blockr1c13(.pg(r1c13), .pg0(r1c12), .pgo(r2c13));
    BlackCell blockr1c14(.pg(r1c14), .pg0(r1c13), .pgo(r2c14));
    BlackCell blockr1c15(.pg(r1c15), .pg0(r1c14), .pgo(r2c15));

/* SECOND ROW */
    wire r3c2, r3c3;
    wire [1:0] r3c4, r3c5, r3c6, r3c7, r3c8, r3c9, r3c10, r3c11, r3c12, r3c13, r3c14, r3c15;
    GrayCell blockr2c2(.pg(r2c2), .pg0(Cin), .pgo(r3c2));
    GrayCell blockr2c3(.pg(r2c3), .pg0(r2c1), .pgo(r3c3));

    BlackCell blockr2c4(.pg(r2c4), .pg0(r2c2), .pgo(r3c4));
    BlackCell blockr2c5(.pg(r2c5), .pg0(r2c3), .pgo(r3c5));
    BlackCell blockr2c6(.pg(r2c6), .pg0(r2c4), .pgo(r3c6));
    BlackCell blockr2c7(.pg(r2c7), .pg0(r2c5), .pgo(r3c7));
    BlackCell blockr2c8(.pg(r2c8), .pg0(r2c6), .pgo(r3c8));
    BlackCell blockr2c9(.pg(r2c9), .pg0(r2c7), .pgo(r3c9));
    BlackCell blockr2c10(.pg(r2c10), .pg0(r2c8), .pgo(r3c10));
    BlackCell blockr2c11(.pg(r2c11), .pg0(r2c9), .pgo(r3c11));
    BlackCell blockr2c12(.pg(r2c12), .pg0(r2c10), .pgo(r3c12));
    BlackCell blockr2c13(.pg(r2c13), .pg0(r2c11), .pgo(r3c13));
    BlackCell blockr2c14(.pg(r2c14), .pg0(r2c12), .pgo(r3c14));
    BlackCell blockr2c15(.pg(r2c15), .pg0(r2c13), .pgo(r3c15));


/* THIRD ROW */
    wire r4c4;
    wire r4c5;
    wire r4c6;
    wire r4c7;

    wire  [1:0] r4c8, r4c9, r4c10, r4c11, r4c12,  r4c13, r4c14, r4c15;

    GrayCell blockr3c4(.pg(r3c4), .pg0(Cin), .pgo(r4c4));
    GrayCell blockr3c5(.pg(r3c5), .pg0(r2c1), .pgo(r4c5));
    GrayCell blockr3c6(.pg(r3c6), .pg0(r3c2), .pgo(r4c6));
    GrayCell blockr3c7(.pg(r3c7), .pg0(r3c3), .pgo(r4c7));

    BlackCell blockr3c8(.pg(r3c8), .pg0(r3c4), .pgo(r4c8));
    BlackCell blockr3c9(.pg(r3c9), .pg0(r3c5), .pgo(r4c9));
    BlackCell blockr3c10(.pg(r3c10), .pg0(r3c6), .pgo(r4c10));
    BlackCell blockr3c11(.pg(r3c11), .pg0(r3c7), .pgo(r4c11));
    BlackCell blockr3c12(.pg(r3c12), .pg0(r3c8), .pgo(r4c12));
    BlackCell blockr3c13(.pg(r3c13), .pg0(r3c9), .pgo(r4c13));
    BlackCell blockr3c14(.pg(r3c14), .pg0(r3c10), .pgo(r4c14));
    BlackCell blockr3c15(.pg(r3c15), .pg0(r3c11), .pgo(r4c15));


/* FOURTH ROW */
    wire r5c8;
    wire r5c9;
    wire r5c10;
    wire r5c11;
    wire r5c12;
    wire r5c13;
    wire r5c14;
    wire r5c15;

    GrayCell blockr4c8(.pg(r4c8), .pg0(Cin), .pgo(r5c8));
    GrayCell blockr4c9(.pg(r4c9), .pg0(r2c1), .pgo(r5c9));

    GrayCell blockr4c10(.pg(r4c10), .pg0(r3c2), .pgo(r5c10));
    GrayCell blockr4c11(.pg(r4c11), .pg0(r3c3), .pgo(r5c11));
    GrayCell blockr4c12(.pg(r4c12), .pg0(r4c4), .pgo(r5c12));
    GrayCell blockr4c13(.pg(r4c13), .pg0(r4c5), .pgo(r5c13));
    GrayCell blockr4c14(.pg(r4c14), .pg0(r4c6), .pgo(r5c14));
    GrayCell blockr4c15(.pg(r4c15), .pg0(r4c7), .pgo(r5c15));


/* finally */

    xor16 xor16_1(.A({r5c15, r5c14, r5c13, r5c12, r5c11, r5c10, r5c9, r5c8, r4c7, r4c6, r4c5, r4c4, r3c3, r3c2, r2c1, Cin}),
                  .B({r1c16[1],r1c15[1],r1c14[1], r1c13[1],r1c12[1],r1c11[1],r1c10[1],r1c9[1],r1c8[1],r1c7[1],r1c6[1], r1c5[1],r1c4[1],r1c3[1],r1c2[1],r1c1[1]}),
                  .S(S));


    GrayCell genCout(.pg(r1c16), .pg0(r5c15), .pgo(Cout));
  
endmodule
module BlackCell(input [1:0] pg, pg0, output [1:0] pgo);
  
wire and1out;    
and and1(and1out, pg0[0], pg[1]);
or or1(pgo[0], and1out, pg[0]);
and and2(pgo[1], pg[1], pg0[1]);

endmodule

module GrayCell(input [1:0] pg, input pg0, output pgo);
  wire and_out;
  and and1(and_out, pg0, pg[1]);
  or or1(pgo, pg[0], and_out);
  
endmodule

module pg16 (A, B, pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0);
    input [15:0] A, B;
    output [1:0] pg15, pg14, pg13, pg12, pg11, pg10, pg9, pg8, pg7, pg6, pg5, pg4, pg3, pg2, pg1, pg0;
    
wire andout0, xorout0;
wire andout1, xorout1;
wire andout2, xorout2;
wire andout3, xorout3;
wire andout4, xorout4;
wire andout5, xorout5;
wire andout6, xorout6;
wire andout7, xorout7;
wire andout8, xorout8;
wire andout9, xorout9;
wire andout10, xorout10;
wire andout11, xorout11;
wire andout12, xorout12;
wire andout13, xorout13;
wire andout14, xorout14;
wire andout15, xorout15;

and and0(andout0, A[0], B[0]);
xor xor0(xorout0, A[0], B[0]);
and and1(andout1, A[1], B[1]);
xor xor1(xorout1, A[1], B[1]);
and and2(andout2, A[2], B[2]);
xor xor2(xorout2, A[2], B[2]);
and and3(andout3, A[3], B[3]);
xor xor3(xorout3, A[3], B[3]);
and and4(andout4, A[4], B[4]);
xor xor4(xorout4, A[4], B[4]);
and and5(andout5, A[5], B[5]);
xor xor5(xorout5, A[5], B[5]);
and and6(andout6, A[6], B[6]);
xor xor6(xorout6, A[6], B[6]);
and and7(andout7, A[7], B[7]);
xor xor7(xorout7, A[7], B[7]);
and and8(andout8, A[8], B[8]);
xor xor8(xorout8, A[8], B[8]);
and and9(andout9, A[9], B[9]);
xor xor9(xorout9, A[9], B[9]);
and and10(andout10, A[10], B[10]);
xor xor10(xorout10, A[10], B[10]);
and and11(andout11, A[11], B[11]);
xor xor11(xorout11, A[11], B[11]);
and and12(andout12, A[12], B[12]);
xor xor12(xorout12, A[12], B[12]);
and and13(andout13, A[13], B[13]);
xor xor13(xorout13, A[13], B[13]);
and and14(andout14, A[14], B[14]);
xor xor14(xorout14, A[14], B[14]);
and and15(andout15, A[15], B[15]);
xor xor15(xorout15, A[15], B[15]);

assign pg0 = {xorout0, andout0};
assign pg1 = {xorout1, andout1};
assign pg2 = {xorout2, andout2};
assign pg3 = {xorout3, andout3};
assign pg4 = {xorout4, andout4};
assign pg5 = {xorout5, andout5};
assign pg6 = {xorout6, andout6};
assign pg7 = {xorout7, andout7};
assign pg8 = {xorout8, andout8};
assign pg9 = {xorout9, andout9};
assign pg10 = {xorout10, andout10};
assign pg11 = {xorout11, andout11};
assign pg12 = {xorout12, andout12};
assign pg13 = {xorout13, andout13};
assign pg14 = {xorout14, andout14};
assign pg15 = {xorout15, andout15};

endmodule
module xor16 (input [15:0] A, B, output [15:0] S);
xor xor0(S[0] ,A[0], B[0]);
xor xor1(S[1] ,A[1], B[1]);
xor xor2(S[2] ,A[2], B[2]);
xor xor3(S[3] ,A[3], B[3]);
xor xor4(S[4] ,A[4], B[4]);
xor xor5(S[5] ,A[5], B[5]);
xor xor6(S[6] ,A[6], B[6]);
xor xor7(S[7] ,A[7], B[7]);
xor xor8(S[8] ,A[8], B[8]);
xor xor9(S[9] ,A[9], B[9]);
xor xor10(S[10] ,A[10], B[10]);
xor xor11(S[11] ,A[11], B[11]);
xor xor12(S[12] ,A[12], B[12]);
xor xor13(S[13] ,A[13], B[13]);
xor xor14(S[14] ,A[14], B[14]);
xor xor15(S[15] ,A[15], B[15]);
endmodule
