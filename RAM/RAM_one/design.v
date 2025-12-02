//256-bit (32x8) synchronous RAM with one read port and one write port 

module RAM #(
parameter integer  D_WIDTH=8,
parameter integer A_WIDTH=5
)
//----------------------------------
(
//write port 
input wire clk_write,
input wire write_enable,
input wire [A_WIDTH-1:0] address_write,
input wire [D_WIDTH-1:0] data_write


//read port 
input wire clk_read,
input wire [A_WIDTH-1:0] address_read,
output reg [D_WIDTH-1:0] data_read
);
//-----------------------------------

//localparam is a constant inside the module
//depth of RAM = 2^A_WIDTH
//1 << A_WIDTH   means   1 * (2^A_WIDTH)-----> left shift operation

localparam integer DEPTH=1 << A_WIDTH;

//-----------------------------------

//MEMORY ARRAY
// In the memory array, the columns represent the depth and the rows represent the data width

reg[D_WIDTH-1:0] memory[0:DEPTH-1];

//----------------------------------
//SYNCHRONOUS WRITE

always @(posedge clk_write) begin
if (write_enable)
memory[address_write]<=data_write;
end

//---------------------------------
//SYNCHRONOUS READ

always @(posedge clk_read) begin
data_read<=memory[address_read];
end

endmodule
