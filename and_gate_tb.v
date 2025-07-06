module and_gate_tb;
reg [2:0]a1,b1,c1,a2,b2,c2,a3,b3,c3,d1,d2,d3;
wire [8:0]y;
wire [1:0]y1,y2,y3;
rank xnor1(a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,y,y1,y2,y3);
initial begin
$monitor("a1=%d,b1=%d,c1=%d,d1=%d,a2=%d,b2=%d,c2=%d,d2=%d,a3=%d,b3=%d,c3=%d,d4=%d,y=%d,y1=%d,y2=%d,y3=%d\n",a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,y,y1,y2,y3);
a1=3'b011;b1=3'b000;c1=3'b011;d1=3'b000;
a2=3'b000;b2=3'b011;c2=3'b011;d2=3'b000;
a3=3'b011;b3=3'b011;c3=3'b000;d3=3'b001;

#10

a1=3'b011;b1=3'b000;c1=3'b011;d1=3'b000;
a2=3'b000;b2=3'b011;c2=3'b011;d2=3'b000;
a3=3'b000;b3=3'b000;c3=3'b000;d3=3'b001;
#10

a1=3'b011;b1=3'b000;c1=3'b011;d1=3'b000;
a2=3'b000;b2=3'b011;c2=3'b011;d2=3'b000;
a3=3'b000;b3=3'b000;c3=3'b000;d3=3'b000;

end

endmodule
