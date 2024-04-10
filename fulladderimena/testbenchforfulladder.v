module testbenchforfulladder;

reg a, b, cin;
wire sum, cout;

fulladder uut(a,b,cin,sum,cout);
initial begin 

a = 0;
b = 0;
cin = 0;
#5;

a = 0;
b = 0;
cin = 0;

#5;
a = 0;
b = 0;
cin = 1;
#5;

a = 0;
b = 1;
cin = 1;
#5;

a = 1;
b = 0;
cin = 0;
#5;

a = 1;
b = 0;
cin = 1;
#5;

a = 1;
b = 1;
cin = 0;
#5;

a = 1;
b = 1;
cin = 1;
#5;
$finish;
end

endmodule