/* 
Full Adder Module for bit Addition 
Written by referencedesigner.com 
*/
`timescale 1ns / 100ps 
 
module fulladdertb; 
 
reg x;
reg y;
reg cin;
 
wire sum;
wire cout;
 
 
fulladder uut (
.x(x),
.y(y),
.cin(cin),
.sum(sum),
.cout(cout)
);
 
initial
begin
/*x =0;
y =0;
cin =0;
#20; x =1;
#20; y =1;
#20; x =0;
#20; cin = 1;
#20; y = 0;
#20; x = 1; 
#20; y = 1;
#40;*/

// full test set
x =0;
y =0;
cin =0;
#20; cin =1;
#20; y =1;
     cin = 0;
#20; cin = 1;
#20; x = 1;
     y = 0;
	 cin = 0;
#20; cin = 1;
#20; cin = 0;
     y = 1;
#20; cin = 1;
#40;
	 




end
 
 
initial
begin
$monitor("time = %2d, x=%1b, y=%1b,cin =%1b, cout=%1b, sum=%1b", $time,x, y,cin,cout,sum);
end
 
endmodule