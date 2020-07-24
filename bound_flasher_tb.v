`timescale 1ns/1ns
module bound_flasher_tb();
    reg clk, rst_n, flick;

    wire [15:0]LED;
    wire [3:0]LED_val;
    wire [1:0]state;
    wire [3:0]index;
    wire [3:0]max_value, min_value;

    initial begin
        $recordfile ("waves");
        $recordvars ("depth=0", bound_flasher_tb);
    end

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
        #734 flick <= 1'b1;
        #4 flick <= 1'b0; 
        #675 flick <= 1'b1;
        #4 flick <= 1'b0;
        #800 flick <= 1'b1;
        #15 flick <= 1'b0;
        #700 $finish;
    end

    initial begin
        #1604 rst_n = 1'b0;
    end

    initial begin
        #0 flick <= 1'b1;
        #4 flick <= 1'b0;
        #44 flick <= 1'b1;
        #2 flick <= 1'b0;
        #208 flick <= 1'b1;
        #2 flick <= 1'b0;

        #378 flick <= 1'b1;
        #2 flick <= 1'b0;
    end  
endmodule