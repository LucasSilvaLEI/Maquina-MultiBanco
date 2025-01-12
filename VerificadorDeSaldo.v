`timescale 1ns / 1ps

module VerificadorDeSaldo(
    
    input [7:0] saldo,           
    input [3:0] valor_debito,    
    output reg saldo_suficiente  
);

    always @(*) begin
        if (saldo >= valor_debito)
            saldo_suficiente = 1; 
        else
            saldo_suficiente = 0; 
    end

endmodule

