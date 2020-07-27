`timescale 1ns/1ns
module bound_flasher_tb();
    reg clk, rst_n, flick;

    wire [15:0]LED;
    wire [3:0]LED_val;
    wire [1:0]state;
    wire [3:0]index;
    wire [3:0]max_value, min_value;

    // initial begin
    //     $recordfile ("waves");
    //     $recordvars ("depth=0", bound_flasher_tb);
    // end

    initial begin
        clk = 1'b0;
        rst_n = 1'b1;
        repeat(4) #10 clk = ~clk;
        rst_n = 1'b0;
        repeat(4) #10 clk = ~clk;
        rst_n = 1'b1;
        forever #10 clk = ~clk; // generate a clock
    end

    initial begin
        #0 flick <= 1'b0;

        // test flick when reset = 0
        #50 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // start 1st cycle
        #138 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // DOWN-LAMP[5] flick
        #484 flick <= 1'b1;
        #4 flick <= 1'b0; 

        // DOWN-LAMP[0] flick
        #675 flick <= 1'b1;
        #4 flick <= 1'b0;

        // start 2nd cycle
        #800 flick <= 1'b1;
        #15 flick <= 1'b0;

        // start 3rd cycle
        #1200 flick <= 1'b1;
        #10 flick <= 1'b0;

        // reset when flashing 3rd cycle
        #400 rst_n <= 1'b0;
        #50 $finish;
    end


    bound_flasher BoundFlasher(
        // inputs
        .clk(clk),
        .rst_n(rst_n),
        .flick(flick),

        // outputs
        .LED_val(LED_val),
        .state(state),
        .index(index),
        .max_value(max_value),
        .min_value(min_value),
        .LED(LED)
        );
endmodule