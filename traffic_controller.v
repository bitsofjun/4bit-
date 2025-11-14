module traffic_controller(
    input clk, reset,
    output reg [1:0] light
);

// State Encoding
parameter RED = 2'b00,
          YELLOW = 2'b01,
          GREEN = 2'b10;

reg [1:0] state, next_state;

// State Update
always @(posedge clk or posedge reset) begin
    if(reset)
        state <= RED;
    else
        state <= next_state;
end

// Next State Logic
always @(*) begin
    case(state)
        RED:    next_state = GREEN;
        GREEN:  next_state = YELLOW;
        YELLOW: next_state = RED;
        default: next_state = RED;
    endcase
end

// Output (Moore)
always @(*) begin
    light = state;
end

endmodule
