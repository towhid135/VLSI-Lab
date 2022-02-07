/* 
Full Adder Module for bit Addition 
*/
module HalfAdder
(
input a,
input b,

output sum,
output carry);

xor(sum,a,b);
and(carry,a,b);

endmodule