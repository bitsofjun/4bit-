module tb_traffic_controller();

reg clk, reset;
wire [1:0] light;

traffic_controller DUT(clk, reset, light);

initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10ns clock
end

initial begin
    reset = 1; #10;
    reset = 0;

    #100;
    $stop;
end

endmodule
