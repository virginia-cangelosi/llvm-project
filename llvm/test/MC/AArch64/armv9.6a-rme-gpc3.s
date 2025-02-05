# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
// RUN: llvm-mc -triple aarch64 -show-encoding %s  | FileCheck %s
.func:
  apas x0
  apas x1
  apas x2
  apas x17
  apas x30
  mrs x3, GPCBW_EL3
  msr GPCBW_EL3, x4

# CHECK:      .func:
# CHECK-NEXT:	apas    x0                              // encoding: [0x00,0x70,0x0e,0xd5]
# CHECK-NEXT:	apas    x1                              // encoding: [0x01,0x70,0x0e,0xd5]
# CHECK-NEXT:	apas    x2                              // encoding: [0x02,0x70,0x0e,0xd5]
# CHECK-NEXT:	apas    x17                             // encoding: [0x11,0x70,0x0e,0xd5]
# CHECK-NEXT:	apas    x30                             // encoding: [0x1e,0x70,0x0e,0xd5]
# CHECK-NEXT: 	mrs	x3, GPCBW_EL3                   // encoding: [0xa3,0x21,0x3e,0xd5]
# CHECK-NEXT: 	msr	GPCBW_EL3, x4                   // encoding: [0xa4,0x21,0x1e,0xd5]
