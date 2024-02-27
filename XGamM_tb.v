// Mikkel Dominic V. Gamboa - S14

`timescale 1ns/1ps
module circuitBehavior_tb(); 
    reg [3:0] t_input;
    wire t_E;
    integer i;

    circuitBehavior dut(t_input[3], t_input[2], t_input[1], t_input[0], t_E);
    
    initial
        begin
            t_input = 4'b0000;
            for (i = 0; i < 17; i = i + 1)
                begin
                    t_input = i;
                    #10; 
                end
        end

        initial
            begin
                $display("Written by Mikkel Gamboa");
                $display("F = (AB' + A'B)(C + D')");
                $display("iVerilog - Behavioral Model");
                $monitor("time = %0d ",$time, "A = %b B = %b C = %b output_D = %b output_E = %b", t_input[3], t_input[2], t_input[1], t_input[0], t_E);
                $dumpfile("circuit.vcd");
                $dumpvars();
            end
endmodule