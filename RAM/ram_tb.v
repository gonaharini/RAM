`timescale 1ns/1ps

module ram_tb;

reg clk;
reg we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;

ram uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("ram.vcd");
    $dumpvars(0, ram_tb);

    clk = 0;
    we = 1;

    // Write Operations
    addr = 4'd0; din = 8'hAA; #10;
    addr = 4'd1; din = 8'h55; #10;
    addr = 4'd2; din = 8'hF0; #10;
    addr = 4'd3; din = 8'h0F; #10;

    // Read Operations
    we = 0;

    addr = 4'd0; #10;
    addr = 4'd1; #10;
    addr = 4'd2; #10;
    addr = 4'd3; #10;

    $finish;

end

initial
begin
    $monitor("Time=%0t WE=%b Addr=%d DataIn=%h DataOut=%h",
              $time,we,addr,din,dout);
end

endmodule
