//////////////////////////////////////////
// config.vh
//
// Written: David_Harris@hmc.edu 4 January 2021
// Modified: Jordan Carlin jcarlin@hmc.edu 14 May 2024
//
// Purpose: Specify which features of Wally are enabled and set
//          configuration parameters
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

// RV32 or RV64: XLEN = 32 or 64
localparam XLEN = 32'd64;

// IEEE 754 compliance
localparam IEEE754 = 0;

// RISC-V configuration per specification
// Base instruction set (defaults to I if E is not supported)
localparam logic E_SUPPORTED = 0;

// Integer instruction set extensions
localparam logic ZIFENCEI_SUPPORTED = 1; // Instruction-Fetch fence
localparam logic ZICSR_SUPPORTED    = 1; // CSR Instructions
localparam logic ZICCLSM_SUPPORTED  = 1; // Misaligned loads/stores
localparam logic ZICOND_SUPPORTED   = 1; // Integer conditional operations

// Multiplication & division extensions
// M implies (and in the configuration file requires) Zmmul
localparam logic M_SUPPORTED     = 1;
localparam logic ZMMUL_SUPPORTED = 1;

// Atomic extensions
// A extension is Zaamo + Zalrsc
localparam logic ZAAMO_SUPPORTED  = 1;
localparam logic ZALRSC_SUPPORTED = 1;

// Bit manipulation extensions
// B extension is Zba + Zbb + Zbs
localparam logic ZBA_SUPPORTED = 1;
localparam logic ZBB_SUPPORTED = 1;
localparam logic ZBS_SUPPORTED = 1;
localparam logic ZBC_SUPPORTED = 1;

// Scalar crypto extensions
// Zkn is all 6 of these
localparam logic ZBKB_SUPPORTED = 1;
localparam logic ZBKC_SUPPORTED = 1;
localparam logic ZBKX_SUPPORTED = 1;
localparam logic ZKND_SUPPORTED = 1;
localparam logic ZKNE_SUPPORTED = 1;
localparam logic ZKNH_SUPPORTED = 1;

// Compressed extensions
// C extension is Zca + Zcf (if RV32 and F supported) + Zcd (if D supported)
// All compressed extensions require Zca
localparam logic ZCA_SUPPORTED = 1;
localparam logic ZCB_SUPPORTED = 1;
localparam logic ZCF_SUPPORTED = 0; // RV32 only, requires F
localparam logic ZCD_SUPPORTED = 1; // requires D

// Floating point extensions
localparam logic F_SUPPORTED   = 1;
localparam logic D_SUPPORTED   = 1;
localparam logic Q_SUPPORTED   = 0;
localparam logic ZFH_SUPPORTED = 1;
localparam logic ZFA_SUPPORTED = 1;

// privilege modes
localparam logic S_SUPPORTED = 1; // Supervisor mode
localparam logic U_SUPPORTED = 1; // User mode

// Supervisor level extensions
localparam logic SSTC_SUPPORTED = 1; // Supervisor-mode timer interrupts

// Hardware performance counters
localparam logic ZICNTR_SUPPORTED = 1;
localparam logic ZIHPM_SUPPORTED  = 1;
localparam COUNTERS = 12'd32;

// Cache-management operation extensions
localparam logic ZICBOM_SUPPORTED = 1;
localparam logic ZICBOZ_SUPPORTED = 1;
localparam logic ZICBOP_SUPPORTED = 1;

// Virtual memory extensions
localparam logic SVPBMT_SUPPORTED  = 1;
localparam logic SVNAPOT_SUPPORTED = 1;
localparam logic SVINVAL_SUPPORTED = 1;
localparam logic SVADU_SUPPORTED   = 1;


// LSU microarchitectural Features
localparam logic BUS_SUPPORTED = 1;
localparam logic DCACHE_SUPPORTED = 1;
localparam logic ICACHE_SUPPORTED = 1;
localparam logic VIRTMEM_SUPPORTED = 1;
localparam logic VECTORED_INTERRUPTS_SUPPORTED = 1;
localparam logic BIGENDIAN_SUPPORTED = 1;

// TLB configuration.  Entries should be a power of 2
localparam ITLB_ENTRIES = 32'd32;
localparam DTLB_ENTRIES = 32'd32;

// Cache configuration.  Sizes should be a power of two
// typical configuration 4 ways, 4096 bytes per way, 256 bit or more lines
localparam DCACHE_NUMWAYS = 32'd4;
localparam DCACHE_WAYSIZEINBYTES = 32'd4096;
localparam DCACHE_LINELENINBITS = 32'd512;
localparam ICACHE_NUMWAYS = 32'd4;
localparam ICACHE_WAYSIZEINBYTES = 32'd4096;
localparam ICACHE_LINELENINBITS = 32'd512;
localparam CACHE_SRAMLEN = 32'd128;

// Integer Divider Configuration
// IDIV_BITSPERCYCLE must be 1, 2, or 4
localparam IDIV_BITSPERCYCLE = 32'd4;
localparam logic IDIV_ON_FPU = 1;


// FPU division architecture
localparam RADIX = 32'd4;
localparam DIVCOPIES = 32'd4;

`include "config-shared.svh"
