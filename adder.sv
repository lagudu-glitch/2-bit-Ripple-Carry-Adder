module F_ADDER (
    input logic X,
    input logic Y,
    input logic CI,

    output logic CO,
    output logic S
);

    assign CO = (X & Y) | (X & CI) | (Y & CI);
    assign S = X ^ Y ^ CI;

endmodule

module R_ADDER (
    input logic [1:0] X,
    input logic [1:0] Y,

    output logic CO,
    output logic [1:0] S 
);
    logic CO_0;

    F_ADDER bit0 (.X(X[0]), .Y(Y[0]), .CI(1'b0), .CO(CO_0), .S(S[0]));
    F_ADDER bit1 (.X(X[1]), .Y(Y[1]), .CI(CO_0), .CO(CO), .S(S[1]));

endmodule