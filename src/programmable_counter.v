/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 * Project: 8-bit Programmable Counter
 * Description: A simple 8-bit programmable counter with reset functionality.
 * This module implements an 8-bit register that can be reset and loaded with a new value.
 */

`default_nettype none

// ui[0]: "RESET"
// ui[1]: "ENABLE"
// ui[2]: "LOAD"
// ui[3]: "CLOCK"

// uio[7:0]: "DATA_IN"
// uo[7:0]: "DATA_OUT"

module tt_um_programmable_counter (
    input wire [7:0] ui,
    inout wire [7:0] uio, 
    output reg [7:0] uo
);
    // Asynchronous reset
    always @(posedge ui[3] or posedge ui[0]) begin
        if (ui[0]) begin
            uo[7:0] <= 8'b0;
        end else if (ui[2]) begin
            uo[7:0] <= uio[7:0];
        end else if (ui[1]) begin
            uo[7:0] <= uo[7:0] + 1;
        end
    end

endmodule
