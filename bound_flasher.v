// Code your design here
// module bound_flasher(clk, rst_n, flick, LED_val, state, index, max_value, min_value, LED);
module bound_flasher(clk, rst_n, flick, LED);
    input clk, rst_n, flick;
    output [15:0]LED;

    reg [4:0]LED_val;
    reg [1:0]state;
    reg [3:0]index;
    wire [4:0]max_value;
    wire [4:0]min_value;

    // output reg [4:0]LED_val;
    // output reg [1:0]state;
    // output reg [3:0]index;
    // output [4:0]max_value;
    // output [4:0]min_value;

    reg [4:0]max_array[5:0];
    reg [4:0]min_array[5:0];

    reg [4:0]next_LED_val;
    reg [1:0]next_state;
    reg [3:0]next_index;

    wire flick_trigger;
    wire [3:0]flick_index;
    wire [4:0]flick_LED_val;

    

    // MACRO
    parameter STOP = 2'b00, IDLE = 2'b01, UP = 2'b10, DOWN = 2'b11;
    parameter POSITION_LED5 = 5'd5, POSITION_LED0 = 5'd0;
    parameter MAX_STEP = 5;

    assign flick_trigger = (state == IDLE || (state == DOWN && index != MAX_STEP && (LED_val == POSITION_LED0 || LED_val == POSITION_LED5))) ? flick : 0;
    // assign flick_index = (state == IDLE) ? 4'd0 : (LED_val == POSITION_LED0 ? index - 4'd2 : index - 4'd1);
    assign flick_index = (state == IDLE) ? 4'd0 : (index - 4'd1);
    // assign flick_LED_val = (state == IDLE) ? 4'd1 : (4'd3);
    assign flick_LED_val = (state == IDLE) ? 5'd1 : (LED_val + 5'd1);

    assign max_value = max_array[index];
    assign min_value = min_array[index];

    assign LED = (16'd1 << LED_val) - 1;

    // Behavioral block 
    always@(negedge rst_n or posedge clk or posedge flick_trigger) begin
        if (!rst_n) begin
            state   <= STOP;
            LED_val <= 16'd0;
            index   <= 4'd0;
        end
        else if (flick_trigger) begin
            state   <= UP;
            LED_val <= flick_LED_val;
            index   <= flick_index;
        end
        else begin
            state   <= next_state;
            LED_val <= next_LED_val;
            index   <= next_index;
        end
    end

    // Combinational block - FSM
    always@(*)
        case (state)
        STOP:begin
            if (rst_n) begin
                next_state      = IDLE;
                next_LED_val    = 16'd0;
                next_index      = 4'd0;
                max_array[0]    = 5'd16;
                max_array[1]    = 5'd16;
                max_array[2]    = 5'd11;
                max_array[3]    = 5'd11;
                max_array[4]    = 5'd6;
                max_array[5]    = 5'd6; 

                min_array[0]    = 5'd0;
                min_array[1]    = 5'd5;
                min_array[2]    = 5'd5;
                min_array[3]    = 5'd0;
                min_array[4]    = 5'd0;
                min_array[5]    = 5'd0;
            end
            else begin
                next_state  = STOP;
                next_LED_val= 16'd0;
                next_index  = 4'd0;
            end
        end
        // IDLE:
        IDLE:begin
            next_state  = IDLE;
            next_LED_val= 16'd0;
            next_index  = 4'd0;
        end
        UP:begin
            if (LED_val < max_value) begin 
                next_state  = state;
                next_LED_val= LED_val + 1;
		        next_index  = index;
            end
            else
                if (index < MAX_STEP) begin
                    next_state  = DOWN;
                    next_LED_val= LED_val - 1;
                    next_index  = index + 1;
                end 
                else begin
                    next_state  = IDLE;
                    next_LED_val= 16'd0;
                    next_index  = 4'd0;
                end
        end
        DOWN:begin
            if (LED_val > min_value) begin 
                next_state  = state;
		        next_LED_val= LED_val - 1;
                next_index  = index;
            end
            else 
                if (index < MAX_STEP) begin
                    next_state  = UP;
		            next_LED_val= LED_val + 1;
                    next_index  = index + 1;
                end
                else begin
                    next_state  = IDLE;
                    next_LED_val= 16'd0;
                    next_index  = 4'd0;
                end
        end
        endcase

endmodule
