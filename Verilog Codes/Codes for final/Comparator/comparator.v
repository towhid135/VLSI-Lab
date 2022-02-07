module comparator(
    input x,
    input y,
    output z
    );
 //if x==y then output = 1
assign z = (~x & ~y) |(x & y);

//if x==y then output = 0
//assign z = x ^ y;
 
endmodule