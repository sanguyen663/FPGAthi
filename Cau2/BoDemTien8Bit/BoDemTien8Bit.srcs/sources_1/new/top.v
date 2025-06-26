`timescale 1ns / 1ps

module TopModule (
  input wire clk,    // Clock input
  input wire rst,    // Reset input
  input wire mod,    // Mode input
  output wire [6:0] led, // LED output
  output wire [5:0] led_sel, // LED select output
  output wire dot // Dot output
);

  wire [3:0] donvi;
  wire [3:0] bcd_out;

  // Instantiate the dem_so module
  demso counter (
      .clk(clk),
      .reset(rst),
      .count(count)
    );


  // Instantiate the bcd2seg7 module
  bcd2seg7 bcd2seg7_inst (
    .in_bcd(donvi), // Connect the output of the dem_so to the input of the bcd2seg7
    .seg7_out(led) // Connect the output of the bcd2seg7 to the LED output
  );

  // Instantiate the scan_led module
  scan_led scan_led_inst (
    .sys_clk(clk),
    .rst_n(rst),
    .mod(mod),
    .hms_in({4'b0, donvi}), // Connect the output of the dem_so to the input of the scan_led
    .bcd_out(bcd_out),
    .dot(dot),
    .led_sel(led_sel)
  );

endmodule
