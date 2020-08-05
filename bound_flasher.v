module bound_flasher(clk, rst_n, flick, LED);
    input clk, rst_n, flick;
    output reg [15:0]LED;

    reg [1:0]state;
    reg [3:0]index;

    wire [15:0]max_value;
    wire [15:0]min_value;

    wire [15:0]max_array[5:0];
    wire [15:0]min_array[5:0];

    reg [1:0]next_state;
    reg [3:0]next_index;
    reg [15:0]next_LED;

    wire flick_trigger;
    wire [3:0]flick_index;
    wire flick_special;

    // MACRO
    parameter STOP = 2'b00, IDLE = 2'b01, UP = 2'b10, DOWN = 2'b11;
    parameter POSITION_LED5 = 16'h001f, POSITION_LED0 = 16'h0000;
    parameter MAX_STEP = 5;

    assign max_array[0]    = 16'hffff;
    assign max_array[1]    = 16'hffff;
    assign max_array[2]    = 16'h07ff;
    assign max_array[3]    = 16'h07ff;
    assign max_array[4]    = 16'h003f;
    assign max_array[5]    = 16'h003f; 

    assign min_array[0]    = 16'h0000;
    assign min_array[1]    = 16'h001f;
    assign min_array[2]    = 16'h001f;
    assign min_array[3]    = 16'h0000;
    assign min_array[4]    = 16'h0000;
    assign min_array[5]    = 16'h0000;
    

    // Combinational block - Flick Logic 
    assign flick_trigger = (state == IDLE || (state == DOWN && index != MAX_STEP && (LED == POSITION_LED0 || LED == POSITION_LED5))) ? flick : 0;
    assign flick_index = (state == IDLE) ? 4'd0 : (index - 4'd1);
    assign max_value = max_array[index];
    assign min_value = min_array[index];
    assign flick_special = rst_n && flick && (state == STOP);
    
    // Behavioral block - Flipflop
    always@(negedge rst_n or posedge flick_special or posedge clk or posedge flick_trigger) begin
        if (flick_special) begin
            state   <= UP;
            index   <= 4'd0;
            LED     <= 16'd0;
        end
        else if (!rst_n) begin
            state   <= STOP;
            index   <= 4'd0;
            LED     <= 16'd0;
        end
        else if (flick_trigger) begin
            state   <= UP;
            // LED     <= LED;
            index   <= flick_index;
        end
        else begin
            state   <= next_state;
            // LED_val <= next_LED_val;
            LED     <= next_LED;
            index   <= next_index;
        end
    end

    // Combinational block - FSM
    always@(*)
        case (state)
        STOP:begin
            if (rst_n) begin
                next_state      = IDLE;
                next_LED        = 16'd0;
                next_index      = 4'd0;
                // max_array[0]    = 16'hffff;
                // max_array[1]    = 16'hffff;
                // max_array[2]    = 16'h07ff;
                // max_array[3]    = 16'h07ff;
                // max_array[4]    = 16'h007f;
                // max_array[5]    = 16'h007f; 

                // min_array[0]    = 16'h0000;
                // min_array[1]    = 16'h001f;
                // min_array[2]    = 16'h001f;
                // min_array[3]    = 16'h0000;
                // min_array[4]    = 16'h0000;
                // min_array[5]    = 16'h0000;
            end
        end
        IDLE:begin
            next_state  = IDLE;
            next_LED    = 16'd0;
            next_index  = 4'd0;
        end
        UP:begin
            if (LED < max_value) begin 
                next_state  = state;
                next_LED    = (LED << 1) | 16'd1;
		        next_index  = index;
            end
            else
                if (index < MAX_STEP) begin
                    next_state  = DOWN;
                    next_LED    = LED >> 1;
                    next_index  = index + 1;
                end 
                else begin
                    next_state  = IDLE;
                    next_LED    = 16'd0;
                    next_index  = 4'd0;
                end
        end
        DOWN:begin
            if (LED > min_value) begin 
                next_state  = state;
		        next_LED    = LED >> 1;
                next_index  = index;
            end
            else 
                if (index < MAX_STEP) begin
                    next_state  = UP;
		            next_LED    = (LED << 1) | 16'd1;
                    next_index  = index + 1;
                end
                else begin
                    next_state  = IDLE;
                    next_LED    = 16'd0;
                    next_index  = 4'd0;
                end
        end
        endcase

endmodule
