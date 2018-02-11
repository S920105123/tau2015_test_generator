module block (
in1,
in2,
in3,
clk,
out1,
out2,
clkout,
);

// Start PIs
input in1;
input in2;
input in3;
input clk;

// Start POs
output out1;
output out2;
output clkout;

// Start wires
wire in1;
wire in2;
wire in3;
wire clk;
wire out1;
wire out2;
wire clkout;
wire n1;
wire n2;
wire n8;
wire clkinv;

// Start cells
DFF_X80 U1 ( .d(n8), .ck(clkinv), .q(n1) );
NAND2_X1 U2 ( .a(in2), .b(n1), .o(n2) );
NAND2_X1 U3 ( .a(in1), .b(out2), .o(out1) );
INV_X1 U4 ( .a(clk), .o(clkinv) );
DFF_X80 U5 ( .d(n2), .ck(clkinv), .q(out2) );
INV_X1 U6 ( .a(clkinv), .o(clkout) );
INV_X1 U8 ( .a(in3), .o(n8) );

endmodule
