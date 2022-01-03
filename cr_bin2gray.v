// SPDX-License-Identifier: Apache-2.0
/*
 * Copyright 2021, Luke E. McKay.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/** Binary to Gray Code Conversion
 *  Version 0.1.0
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
