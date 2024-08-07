//////////////////////////////////////////
// cvw.sv
//
// Written: David_Harris@hmc.edu 27 January 2022
//
// Purpose: package with shared CORE-V-Wally global parameters
//
// A component of the Wally configurable RISC-V project.
//
// Copyright (C) 2021 Harvey Mudd College & Oklahoma State University
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Licensed under the Solderpad Hardware License v 2.1 (the “License”); you may not use this file 
// except in compliance with the License, or, at your option, the Apache License version 2.0. You 
// may obtain a copy of the License at
//
// https://solderpad.org/licenses/SHL-2.1/
//
// Unless required by applicable law or agreed to in writing, any work distributed under the 
// License is distributed on an “AS IS” BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
// either express or implied. See the License for the specific language governing permissions 
// and limitations under the License.
////////////////////////////////////////////////////////////////////////////////////////////////

// Usiing global `define statements isn't ideal in a large SystemVerilog system because
// of the risk of `define name conflicts across different subsystems.
// Instead, CORE-V-Wally loads the appropriate configuration one time and places it in a package
// that is referenced by all Wally modules but not by other subsystems.

`ifndef CVW_T

`define CVW_T 1

package cvw;

typedef struct packed {
  int           XLEN;     // Machine width (32 or 64)
  logic         IEEE754;  // IEEE754 NaN handling (0 = use RISC-V NaN propagation instead)

// Integer Divider Configuration
// IDIV_BITSPERCYCLE must be 1, 2, or 4
  int           IDIV_BITSPERCYCLE;
  logic         IDIV_ON_FPU;


// FPU division architecture
  int           RADIX;
  int           DIVCOPIES;

// macros to define supported modes
  logic A_SUPPORTED;
  logic B_SUPPORTED;
  logic C_SUPPORTED;
  logic D_SUPPORTED;
  logic E_SUPPORTED;
  logic F_SUPPORTED;
  logic I_SUPPORTED;
  logic M_SUPPORTED;
  logic Q_SUPPORTED;
  logic S_SUPPORTED;
  logic U_SUPPORTED;

  // logarithm of XLEN, used for number of index bits to select
  int LOG_XLEN;

// Floating point constants for Quad, Double, Single, and Half precisions
  int         Q_LEN;
  int         Q_NE;
  int         Q_NF;
  int         Q_BIAS;
  logic [1:0] Q_FMT;
  int         D_LEN;
  int         D_NE;
  int         D_NF;
  int         D_BIAS;
  logic [1:0] D_FMT;
  int         S_LEN;
  int         S_NE;
  int         S_NF;
  int         S_BIAS;
  logic [1:0] S_FMT;
  int         H_LEN;
  int         H_NE;
  int         H_NF;
  int         H_BIAS;
  logic [1:0] H_FMT;

// Floating point length FLEN and number of exponent (NE) and fraction (NF) bits
  int         FLEN;
  int         LOGFLEN;
  int         NE  ;
  int         NF  ;
  logic [1:0] FMT ;
  int         BIAS;

// Floating point constants needed for FPU paramerterization
  int         FPSIZES;
  int         FMTBITS;
  int         LEN1 ;
  int         NE1  ;
  int         NF1  ;
  logic [1:0] FMT1 ;
  int         BIAS1;
  int         LEN2 ;
  int         NE2  ;
  int         NF2  ;
  logic [1:0] FMT2 ;
  int         BIAS2;

// largest length in IEU/FPU
  int CVTLEN;
  int LLEN;
  int LOGCVTLEN;
  int NORMSHIFTSZ;
  int LOGNORMSHIFTSZ;
  int FMALEN;

// division constants
  int LOGR       ;
  int RK         ;
  int FPDUR      ;
  int DURLEN     ;
  int DIVb       ;
  int DIVBLEN    ;
  // integer division/remainder constants
  int INTDIVb    ;
} cvw_t;

endpackage

`endif
