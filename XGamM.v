// Mikkel Dominic V. Gamboa - S14

module circuitBehavior (A, B, C, D, E);
    input A, B, C, D;
    output reg E;
    
    always @ (A, B, C, D)
    begin
        E = ((A&~B) | (~A&B)) & (C | ~D);
    end
endmodule