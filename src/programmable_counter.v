/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 * Project: 8-bit Programmable Counter
 * Description: A simple 8-bit programmable counter with reset functionality.
 * This module implements an 8-bit register that can be reset and loaded with a new value.
 */

`default_nettype none

// ui[0]: "ENABLE"
// ui[1]: "LOAD"

// uio[7:0]: "DATA_IN"
// uo[7:0]: "DATA_OUT"

module tt_um_programmable_counter (
    input wire clk,
    input wire rst_n,
    input wire ena,

    input wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe
);

    reg [7:0] count;
    assign uo_out = count;
    assign uio_out = 8'b0;
    assign uio_oe = 8'b0;

    always @(posedge clk or posedge rst_n) begin
        if (!rst_n) begin
            count <= 8'b0;
        end else if (ui_in[1]) begin
            count <= uio_in;
        end else if (ui_in[0]) begin
            count <= count + 1;
        end
    end

endmodule
