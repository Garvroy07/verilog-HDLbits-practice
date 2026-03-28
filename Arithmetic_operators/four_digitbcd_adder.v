module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [3:0]c;
    genvar i;
    generate 
        for(i=0;i<4;i=i+1) begin:ripple_adder
            if(i==0) begin
                bcd_fadd ba(a[4*i+:4],b[4*i+:4],cin,c[i],sum[4*i+:4]);
            end
            else begin
                bcd_fadd ba(a[4*i+:4],b[4*i+:4],c[i-1],c[i],sum[4*i+:4]);
            end
        end
     endgenerate
            
            assign cout= c[3];

endmodule

/*
module bcd_fadd (
    input [3:0] a,
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );
endmodule
*/
