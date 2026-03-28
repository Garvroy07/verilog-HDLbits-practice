module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    wire [99:0]c;
    genvar i;
    generate 
        for(i=0;i<100;i=i+1) begin: adder_block
            if(i==0) begin
            	full_adder fa(a[i],b[i],cin,c[i],sum[i]);
            end
            else begin
                full_adder fa(a[i],b[i],c[i-1],c[i],sum[i]);
       	    end
        end
    endgenerate
            assign cout= c[99];
            
endmodule

module full_adder(input a,b,
                 input cin,
                 output cout,
                 output sum );
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
    
    
endmodule
