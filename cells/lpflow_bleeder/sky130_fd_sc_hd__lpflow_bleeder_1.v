/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HD__LPFLOW_BLEEDER_1_V
`define SKY130_FD_SC_HD__LPFLOW_BLEEDER_1_V

/**
 * lpflow_bleeder: Current bleeder (weak pulldown to ground).
 *
 * Verilog wrapper for lpflow_bleeder with size of 1 units.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hd__lpflow_bleeder.v"

`ifdef USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__lpflow_bleeder_1 (
    SHORT,
    VPWR ,
    VGND ,
    VPB  ,
    VNB
);

    input SHORT;
    inout VPWR ;
    input VGND ;
    input VPB  ;
    input VNB  ;
    sky130_fd_sc_hd__lpflow_bleeder base (
        .SHORT(SHORT),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

endmodule
`endcelldefine

/*********************************************************/
`else // If not USE_POWER_PINS
/*********************************************************/

`celldefine
module sky130_fd_sc_hd__lpflow_bleeder_1 (
    SHORT
);

    input SHORT;

    // Voltage supply signals
    wire    VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    sky130_fd_sc_hd__lpflow_bleeder base (
        .SHORT(SHORT)
    );

endmodule
`endcelldefine

/*********************************************************/
`endif // USE_POWER_PINS

`default_nettype wire
`endif  // SKY130_FD_SC_HD__LPFLOW_BLEEDER_1_V
