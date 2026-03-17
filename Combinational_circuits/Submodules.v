// Top module using submodules A and B

module top_module (
    input x,
    input y,
    output z
);

    wire z1, z2, z3, z4;
    wire z5, z6;

    A IA1(x, y, z1);
    B IB1(x, y, z2);
    A IA2(x, y, z3);
    B IB2(x, y, z4);

    assign z5 = z1 | z2;
    assign z6 = z3 & z4;
    assign z  = z5 ^ z6;

endmodule


// Module A: (x XOR y) AND x
module A(input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule


// Module B: XNOR
module B(input x, input y, output z);
    assign z = ~(x ^ y);
endmodule
