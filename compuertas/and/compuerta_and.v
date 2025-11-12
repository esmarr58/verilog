// Code your design here
module compuerta_and(
    input  a,
    input  b,
    output f
);
    // Implementación combinacional simple:
    assign f = a & b;

    // (Tu versión con always también sirve, pero es más verbosa:
    // output reg f;
    // always @* begin
    //     f = a & b;
    // end
endmodule
