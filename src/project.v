/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none
module vga(
	   input  clk,
	   input  rst,
           input  XXXXX
           input  XXXXX
           input  XXXXX
           input  XXXXX
           input  XXXXX
           input  XXXXX
           input  XXXXX
	   output r0,
	   output r1,
	   output r2,
	   output r3,
	   output g0,
	   output g1,
	   output g2,
	   output g3,
	   output b0,
	   output b1,
	   output b2,
	   output b3,
	   output hs,
	   output vs
	   );

module tt_um_WillyJules_chipbootcamp (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
