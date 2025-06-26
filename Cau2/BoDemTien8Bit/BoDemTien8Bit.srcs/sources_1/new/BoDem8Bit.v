module Counter8bit (
  input wire clk,    // Clock input
  input wire rst,    // Reset input
  output reg [7:0] count  
);

reg [25:0] clk_count = 0; // B? ??m chu k? ??ng h?
reg [7:0] next_count;

always @(posedge clk or posedge rst) begin
  if (rst) begin
    count <= 8'b00000000;
    clk_count <= 0;
  end else begin
    if (clk_count == 50000000 - 1) begin 
      count <= next_count;
      clk_count <= 0;
    end else begin
      clk_count <= clk_count + 1;
    end
  end
end

always @* begin
  if (rst) begin
    next_count = 8'b00000000;
  end else if (clk_count == 50000000 - 1) begin
    next_count = count + 1;
  end else begin
    next_count = count;
  end
end

endmodule
