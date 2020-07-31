`timescale 1ns/1ns
module bound_flasher_tb();
    reg clk, rst_n, flick;

    wire [15:0]LED;
    // wire [3:0]LED_val;
    // wire [1:0]state;
    // wire [3:0]index;
    // wire [3:0]max_value, min_value;

    initial begin
        $recordfile ("waves");
        $recordvars ("depth=0", bound_flasher_tb);
    end

    initial begin
        clk <= 1'b0;
        forever #10 clk = ~clk; // generate a clock
    end

    initial begin
        #10000 $finish;
    end

    // Test normal flow + RESET at state UP + RESET at state DOWN
    initial begin
        rst_n <= 1'b0;
        flick <= 1'b0;

        #50 rst_n <= 1'b1;

        // start 1st cycle
        #25 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // start 2nd cycle
        #1300 flick <= 1'b1;
        #4 flick <= 1'b0;

        #100 rst_n <= 1'b0;
        #100 rst_n <= 1'b1;

        // start 2nd cycle
        #50 flick <= 1'b1;
        #4 flick <= 1'b0;

        #370 rst_n <= 1'b0;
        #100 rst_n <= 1'b1;
    end

    initial begin
        #2400 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // FLICK at state DOWN LED[5]
        #530 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK at state DOWN LED[0]
        #780 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK at random point 
        #40 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK at random point 
        #140 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK at random point 
        #170 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // #150 flick <= 1'b1;
        // #4 flick <= 1'b0; 

        // FLICK at state DOWN LED[0] in final step
        #360 flick <= 1'b1;
        #4 flick <= 1'b0; 
    end

    initial begin
        #4500 flick <= 1'b1;
        #4 flick <= 1'b0;

        // long FLICK at state DOWN LED[5]
        #516 flick <= 1'b1;
        #50 flick <= 1'b0;

        // long FLICK at state DOWN LED[0]
        #705 flick <= 1'b1;
        #80 flick <= 1'b0;
    end

    initial begin
        #7500 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK and RESET active simultaneously
        #150 flick <= 1'b1;
        rst_n <= 1'b0;
        #4 flick <= 1'b0;
        #50 rst_n = 1'b1;

        #50 flick <= 1'b1;
        #4 flick <= 1'b0;

        // FLICK and RESET active simultaneously at posedge CLK
        #48 flick <= 1'b1;
        rst_n <= 1'b0;
        #4 flick <= 1'b0;
        #50 rst_n = 1'b1;
    end

    initial begin 
        #8500 rst_n <= 1'b0;

        // FLICK when RESET active
        #100 flick <= 1'b1;
        #4 flick <= 1'b0;
    end

    bound_flasher BoundFlasher(
        // inputs
        .clk(clk),
        .rst_n(rst_n),
        .flick(flick),

        // outputs
        // .LED_val(LED_val),
        // .state(state),
        // .index(index),
        // .max_value(max_value),
        // .min_value(min_value),
        .LED(LED)
    );
endmodule