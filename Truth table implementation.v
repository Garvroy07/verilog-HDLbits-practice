// Truth table implementation

module top_module( 
    input x3,
    input x2,
    input x1,
    output f
);
    wire p1, p2, p3, p4;

    assign p1 = ~x3 & x2 & ~x1; // row 2
    assign p2 = ~x3 & x2 & x1;  // row 3
    assign p3 = x3 & ~x2 & x1;  // row 5
    assign p4 = x3 & x2 & x1;   // row 7

    assign f = p1 | p2 | p3 | p4;
endmodule