
// rvtest_config.svh 
// cv32a65x configuration
// SPDX-License-Identifier: Apache-2.0

// Define XLEN, used in covergroups
`define XLEN32
// FLEN and VLEN are disabled/ignored for this core as RVF/RVD/RVV are False
// `define FLEN64 
// `define VLEN512

// PMP Grain (G)
// CVA6 typically uses G=0 (4-byte granularity) unless specified otherwise
`define G 0
// `define G_IS_0

// PMP mode selection
// Per parameters: NrPMPEntries = 16
`define PMP_16

// Base addresses 
// Based on PMA CachedRegionAddrBase
`define RAM_BASE_ADDR       32'h80000000
`define LARGEST_PROGRAM     32'h00001000

// Define relevant addresses
// Based on HaltAddress/ExceptionAddress/DmBaseAddress parameters
`define RVMODEL_ACCESS_FAULT_ADDRESS 32'h00000000
`define CLINT_BASE 32'h02000000 

// Extensions supported by cv32a65x
`define C_SUPPORTED      // RVC is True
`define M_SUPPORTED      // RVM is True
`define I_SUPPORTED      // RVI is True
`define ZBB_SUPPORTED     // RVB is True
`define ZBC_SUPPORTED     // RVB is True
`define ZCB_SUPPORTED     // RVB is True
`define ZBA_SUPPORTED     // RVB is True
`define ZBS_SUPPORTED     // RVB is True
`define ZCA_SUPPORTED     // Required for RVC (True)
`define ZICSR_SUPPORTED    // Required for CSR instructions (True)

// Extensions DISABLED for cv32a65x (False in parameters)
// `define D_SUPPORTED
// `define F_SUPPORTED
// `define ZFA_SUPPORTED
// `define ZFH_SUPPORTED
// `define ZIHPM_SUPPORTED (RVZihpm is False)
// `define ZAAMO_SUPPORTED (RVA is False)
// `define ZALRSC_SUPPORTED (RVA is False)
// `define ZICNTR_SUPPORTED (RVZicntr is False)
// `define smpmp_SUPPORTED (SMPMP is False)

// Performance Counter settings
// PerfCounterEn and RVZihpm are False
 `define COUNTINHIBIT_EN_0
 `define COUNTINHIBIT_EN_2
 `define TIME_CSR_IMPLEMENTED
