`timescale 1ns/1ps

module tb;
    // Variables de entrada y salida
    reg a, b;
    wire f;

    // Instancia del módulo bajo prueba (DUT)
    compuerta_and dut (
        .a(a),
        .b(b),
        .f(f)
    );

    // Bloque inicial para aplicar estímulos
    initial begin
        // Configurar archivo de ondas
        $dumpfile("waves.vcd");   // Nombre del archivo VCD
      $dumpvars(1, tb);         // Guardar todas las señales del testbench

        $display("Tiempo(ns) | a b | f");
        $monitor("%10t | %b %b | %b", $time, a, b, f);

        // Estímulos secuenciales
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        #10 $finish; // Fin de la simulación
    end
endmodule
