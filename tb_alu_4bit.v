module tb_alu_4bit();

reg [3:0] A, B;
reg [2:0] ALU_Sel;
wire [3:0] ALU_Out;

alu_4bit DUT(A, B, ALU_Sel, ALU_Out);

initial begin
    A = 4'b0101; B = 4'b0011;

    ALU_Sel = 3'b000; #10;   // ADD
    ALU_Sel = 3'b001; #10;   // SUB
    ALU_Sel = 3'b010; #10;   // AND
    ALU_Sel = 3'b011; #10;   // OR
    ALU_Sel = 3'b100; #10;   // XOR

    $stop;
end

endmodule
