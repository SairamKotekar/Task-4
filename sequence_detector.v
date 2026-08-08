module sequence_detector(
    input clk, reset, in,
    output reg detected
);
parameter S0 = 2'd0,
          S1 = 2'd1,
          S2 = 2'd2,
          S3 = 2'd3;
reg [1:0] state;
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= S0;
        detected <= 0;
    end
    else
    begin
        detected <= 0;
        case(state)
            S0: begin
                if(in) state <= S1;
            end
            S1: begin
                if(in)
                    state <= S1;
                else
                    state <= S2;
            end
            S2: begin
                if(in)
                    state <= S3;
                else
                    state <= S0;
            end
            S3: begin
                if(in)
                begin
                    detected <= 1;   
                    state <= S1;     
                end
                else
                    state <= S2;
            end
        endcase
    end
end
endmodule
