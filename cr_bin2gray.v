// SPDX-License-Identifier: Apache-2.0
// Copyright 2021 Luke E. McKay.

/** Bineary to Gray Code Conversion
 *  Version 0.1
 */
module cr_bin2gray
#(
  parameter pWidth = 4 //!< Datapath Width
)(
  //# {{}}

  //# {{}}
  input  wire [pWidth-1:0] B, //!< Binary Input
  output wire [pWidth-1:0] G  //!< Gray Code Output
);

assign G = (B >> 1) ^ B;

endmodule
