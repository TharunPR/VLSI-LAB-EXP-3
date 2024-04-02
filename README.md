# SIMULATION AND IMPLEMENTATION OF BINARY MULTIPLIER
**AIM:**<br>

&emsp;&emsp;To simulate and implement binary multiplier using VIVADO 2023.2.<br>

**APPARATUS REQUIRED:**<br>

&emsp;&emsp;VIVADO 2023.2<br>
  
**PROCEDURE:**<br>

 STEP:1 Launch the Vivado 2023.2 software.<br>
 STEP:2 Click on “create project ” from the starting page of vivado.<br>
 STEP:3 Choose the design entry method:RTL(verilog/VHDL).<br>
 STEP:4 Crete design source and give name to it and click finish.<br>
 STEP:5 Write the verilog code and check the syntax.<br>
 STEP:6 Click “run simulation” in the navigator window and click “Run behavioral simulation”.<br>
 STEP:7 Verify the output in the simulation window.<br>
 
**LOGIC DIAGRAM:**<br>

**2 BIT MULTIPLIER:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-3/assets/6987778/7713750f-65e6-41c0-8082-5005eac4031c)

**4 BIT MULTIPLIER:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-3/assets/6987778/d95215dd-8cf1-4e08-93cc-96adfdd7fbdc)


**VERILOG CODE:**<br>

**2 BIT MULTIPLIER:**<br>

 module ha(a,b,sum,carry);<br>
 input a,b;<br>
 output sum,carry;<br>
 xor g1(sum,a,b);<br>
 and g2(carry,a,b);<br>
 endmodule<br>
 
 module bitmul(a,b,p,cout);<br>
 input [1:0]a,b;<br>
 output [2:0]p;<br>
 output cout;<br>
 wire w1,w2,w3,w4;<br>
 and (p[0],a[0],b[0]);<br>
 and (w1,a[0],b[1]);<br>
 and (w2,a[1],b[0]);<br>
 and (w3,a[1],b[1]);<br>
 ha adder1(w1,w2,p[1],w4);<br>
 ha adder2(w3,w4,p[2],cout);<br>
 endmodule<br>

**4 BIT MULTIPLIER:**<br>

 module ha(a,b,sum,carry);<br>
 input a,b;<br>
 output sum,carry;<br>
 xor g1(sum,a,b);<br>
 and g2(carry,a,b);<br>
 endmodule<br>
 
 module fa(a,b,c,sum,carry);<br>
 input a,b,c;<br>
 output sum,carry;<br>
 wire w1,w2,w3;<br>
 xor(w1,a,b);<br>
 xor(sum,w1,c);<br>
 and(w2,w1,c)<br>
 and(w3,a,b);<br>
 or(carry,w2,w3);<br>
 endmodule<br>
 
 module mul4bit(a,b,p);<br>
 input [3:0]a,b;<br>
 output [7:0]p;<br>
 wire [15:0]w;<br>
 wire [3:0]hc;<br>
 wire [6:0]fc;<br>
 wire [4:0]fs;<br>
 wire hs;<br>
 and r11(p[0],a[0],b[0]);<br>
 and r12(w[1],a[1],b[0]);<br>
 and r13(w[2],a[2],b[0]);<br>
 and r14(w[3],a[3],b[0]);<br>
 and r21(w[4],a[0],b[1]);<br>
 and r22(w[5],a[1],b[1]);<br>
 and r23(w[6],a[2],b[1]);<br>
 and r24(w[7],a[3],b[1]);<br>
 ha r31(w[1],w[4],p[1],hc[0]);<br>
 fa r32(w[2],w[5],hc[0],fs[0],fc[0]);<br>
 fa r33(w[3],w[6],fc[0],fs[1],fc[1]);<br>
 ha r34(w[7],fc[1],hs,hc[1]);<br>
 and r41(w[8],a[0],b[2]);<br>
 and r42(w[9],a[1],b[2]);<br>
 and r43(w[10],a[2],b[2]);<br>
 and r44(w[11],a[3],b[2]);<br>
 ha r51(w[8],fs[0],p[2],hc[2]);<br>
 fa r52(w[9],fs[1],hc[2],fs[2],fc[2]);<br>
 fa r53(w[10],hs,fc[2],fs[3],fc[3]);<br>
 fa r54(w[11],hc[1],fc[3],fs[4],fc[4]);<br>
 and r61(w[12],a[0],b[3]);<br>
 and r62(w[13],a[1],b[3]);<br>
 and r63(w[14],a[2],b[3]);<br>
 and r64(w[15],a[3],b[3]);<br>
 ha r71(w[12],fs[2],p[3],hc[3]);<br>
 fa r72(w[13],fs[3],hc[3],p[4],fc[5]);<br>
 fa r73(w[14],fs[4],fc[5],p[5],fc[6]);<br>
 fa r74(w[15],fc[4],fc[6],p[6],p[7]);<br>
 endmodule<br>

**OUTPUT WAVEFORM:**<br>

**2 BIT MULTIPLIER:**

![2bitmul](https://github.com/TharunPR/VLSI-LAB-EXP-3/assets/117915125/163f3804-c192-49e9-8548-ac16251ab47c)

**4 BIT MULTIPLIER:**

![4bitmul](https://github.com/TharunPR/VLSI-LAB-EXP-3/assets/117915125/f8e4bedf-bdde-4397-893d-0d49ad94d584)


**RESULT:**<br>
&emsp;&emsp;Thus the simulation and implementation of binary multipliers is done and the outputs are verified successfully.



