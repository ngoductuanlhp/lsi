// Code your design here
module bound_flasher(clk, rst_n, flick, LED_val, state, index, max_value, min_value, LED);
// module bound_flasher(clk, rst_n, flick, LED);
    input clk, rst_n, flick;
    output reg [3:0]LED_val;
    output reg [1:0]state;
    output reg [3:0]index;

    reg [3:0]max_array[5:0];
    reg [3:0]min_array[5:0];

    reg [15:0]next_LED_val;
    reg [1:0]next_state;
    reg [3:0]next_index;

    wire flick_trigger;
    wire [3:0]flick_index;

    output [3:0]max_value;
    output [3:0]min_value;

    output [15:0]LED;

    // MACRO
    parameter STOP = 2'b00, IDLE = 2'b01, UP = 2'b10, DOWN = 2'b11;
    parameter POSITION_LED5 = 4'd5, POSITION_LED0 = 4'd0;
    parameter MAX_STEP = 5;

    assign flick_trigger = (state == IDLE || (state == DOWN && (LED_val == POSITION_LED0 || LED_val == POSITION_LED5))) ? flick : 0;
    // assign flick_index = (state == IDLE) ? 4'd0 : (LED_val == POSITION_LED0 ? index - 4'd2 : index - 4'd1);
    assign flick_index = (state == IDLE) ? 4'd0 : (index - 4'd1);
    assign flick_LED_val = (state == IDLE) ? 4'd1 : (LED_val + 4'd1);

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
                max_array[0]    = 4'd15;
                max_array[1]    = 4'd15;
                max_array[2]    = 4'd10;
                max_array[3]    = 4'd10;
                max_array[4]    = 4'd5;
                max_array[5]    = 4'd5; 

                min_array[0]    = 4'd0;
                min_array[1]    = 4'd5;
                min_array[2]    = 4'd5;
                min_array[3]    = 4'd0;
                min_array[4]    = 4'd0;
                min_array[5]    = 4'd0;
            end
            else begin
                next_state  = STOP;
                next_LED_val= 16'd0;
                next_index  = 4'd0;
            end
        end
        IDLE:begin
            next_state  = IDLE;
            next_LED_val= 16'd0;
            next_index  = 4'd0;
        end
        UP:begin
            if (LED_val == max_value)
                if (index == MAX_STEP) begin
                    next_state  = IDLE;
                    next_LED_val= 16'd0;
                    next_index  = 4'd0;
                end
                else begin
                    next_state  = DOWN;
                    next_LED_val= LED_val - 1;
                    next_index  = index + 1;
                end
            else begin 
                next_state  = state;
                next_LED_val= LED_val + 1;
		        next_index  = index;
            end
        end
        DOWN:begin
            if (LED_val == min_value)
                if (index == MAX_STEP) begin
                    next_state  = IDLE;
                    next_LED_val= 16'd0;
                    next_index  = 4'd0;
                end
                else begin
                    next_state  = UP;
		            next_LED_val= LED_val + 1;
                    next_index  = index + 1;
                end
            else begin 
                next_state  = state;
		        next_LED_val= LED_val - 1;
                next_index  = index;
            end
        end
        endcase

endmodule
