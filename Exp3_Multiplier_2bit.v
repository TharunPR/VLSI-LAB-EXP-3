module ha(a,b,sum,carry);
input a,b;
output sum,carry;
xor g1(sum,a,b);
and g2(carry,a,b);
endmodule

module mul_2bit(a,b,p,cout);
input [1:0]a,b;
output [2:0]p;
output cout;
wire w1,w2,w3,w4;
and (p[0],a[0],b[0]);
and (w1,a[0],b[1]);
and (w2,a[1],b[0]);
and (w3,a[1],b[1]);
ha adder1(w1,w2,p[1],w4);
ha adder2(w3,w4,p[2],cout);
endmodule
