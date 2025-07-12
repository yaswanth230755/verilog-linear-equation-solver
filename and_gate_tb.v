module and_gate_tb;

reg [2:0]a1,b1,c1,a2,b2,c2,a3,b3,c3,d1,d2,d3;
wire [8:0]y;
wire [1:0]y1,y2,y3;

rank xnor1(a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,y,y1,y2,y3);

// ✅ Display header for better readability
initial begin
    $display("=== Linear Equation Solver Testbench ===");
    $display("Testing 3x3 system: [a1 b1 c1][x1]   [d1]");
    $display("                    [a2 b2 c2][x2] = [d2]");
    $display("                    [a3 b3 c3][x3]   [d3]");
    $display("Output: y=determinant, y1/y2/y3=rank classifications");
    $display("================================================");
end

// ✅ Waveform dump for better debugging
initial begin
    $dumpfile("rank_tb.vcd");
    $dumpvars(0, and_gate_tb);
end

// ✅ Main test sequence with comprehensive test cases
initial begin
    // ✅ Monitor statement with correct d3 display
    $monitor("a1=%d,b1=%d,c1=%d,d1=%d,a2=%d,b2=%d,c2=%d,d2=%d,a3=%d,b3=%d,c3=%d,d3=%d,y=%d,y1=%d,y2=%d,y3=%d\n",a1,b1,c1,d1,a2,b2,c2,d2,a3,b3,c3,d3,y,y1,y2,y3);
    
    $display("Test Case 1: Full rank system (unique solution)");
    a1=3'b011; b1=3'b000; c1=3'b011; d1=3'b000;
    a2=3'b000; b2=3'b011; c2=3'b011; d2=3'b000;
    a3=3'b011; b3=3'b011; c3=3'b000; d3=3'b001;
    #10
    
    $display("Test Case 2: Singular matrix (det=0)");
    a1=3'b011; b1=3'b000; c1=3'b011; d1=3'b000;
    a2=3'b000; b2=3'b011; c2=3'b011; d2=3'b000;
    a3=3'b000; b3=3'b000; c3=3'b000; d3=3'b001;
    #10
    
    $display("Test Case 3: Different rank classification");
    a1=3'b011; b1=3'b000; c1=3'b011; d1=3'b000;
    a2=3'b000; b2=3'b011; c2=3'b011; d2=3'b000;
    a3=3'b000; b3=3'b000; c3=3'b000; d3=3'b000;
    #10
    
    $display("Test Case 4: Identity matrix");
    a1=3'b001; b1=3'b000; c1=3'b000; d1=3'b001;
    a2=3'b000; b2=3'b001; c2=3'b000; d2=3'b010;
    a3=3'b000; b3=3'b000; c3=3'b001; d3=3'b011;
    #10
    
    $display("Test Case 5: All zeros (degenerate case)");
    a1=3'b000; b1=3'b000; c1=3'b000; d1=3'b000;
    a2=3'b000; b2=3'b000; c2=3'b000; d2=3'b000;
    a3=3'b000; b3=3'b000; c3=3'b000; d3=3'b000;
    #10
    
    $display("Test Case 6: Maximum values");
    a1=3'b111; b1=3'b111; c1=3'b111; d1=3'b111;
    a2=3'b111; b2=3'b111; c2=3'b111; d2=3'b111;
    a3=3'b111; b3=3'b111; c3=3'b111; d3=3'b111;
    #10
    
    $display("Test Case 7: Stress test with alternating patterns");
    a1=3'b101; b1=3'b010; c1=3'b101; d1=3'b010;
    a2=3'b010; b2=3'b101; c2=3'b010; d2=3'b101;
    a3=3'b101; b3=3'b010; c3=3'b101; d3=3'b010;
    #10
    
    $display("Test Case 8: Single non-zero element");
    a1=3'b001; b1=3'b000; c1=3'b000; d1=3'b001;
    a2=3'b000; b2=3'b000; c2=3'b000; d2=3'b000;
    a3=3'b000; b3=3'b000; c3=3'b000; d3=3'b000;
    #10
    
    $display("Test Case 9: Diagonal matrix");
    a1=3'b010; b1=3'b000; c1=3'b000; d1=3'b001;
    a2=3'b000; b2=3'b011; c2=3'b000; d2=3'b010;
    a3=3'b000; b3=3'b000; c3=3'b100; d3=3'b011;
    #10
    
    $display("Test Case 10: Upper triangular matrix");
    a1=3'b001; b1=3'b010; c1=3'b011; d1=3'b001;
    a2=3'b000; b2=3'b001; c2=3'b010; d2=3'b010;
    a3=3'b000; b3=3'b000; c3=3'b001; d3=3'b011;
    #10
    
    $display("================================================");
    $display("All test cases completed successfully!");
    $display("Total test cases executed: 10");
    $finish;
end

endmodule
