module ram(
    input clk,
    input we,
    input [3:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] memory [15:0];

always @(posedge clk)
begin
    if(we)
        memory[addr] <= din;
end

always @(*)
begin
    dout = memory[addr];
end

endmodule
