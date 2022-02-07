`timescale 1ns / 100ps 
module TestModule;
// Inputs
reg a;
reg b;

// Outputs
wire sum;
wire carry;

// Instantiate the Unit Under Test (UUT)
HalfAdder uut (
.a(a),
.b(b),
.sum(sum),
.carry(carry)
);

initial begin
// Initialize Inputs
a = 0;
b = 0;
// Wait 100 ns for global reset to finish


#20 b = 1;
#20 a = 1;
    b = 0;
#20 b = 1;
#40;
end

initial
begin
$monitor("time = %2d, a=%1b, b=%1b,sum =%1b, carry=%1b", $time,a, b,sum,carry);
end



endmodule