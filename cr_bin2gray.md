## cr_bin2gray - Binary to Gray Code Conversion

*Collective RTL Library - Building Blocks Core*

-----
### Overview

Gray codes are non-weighted codes, where two successive values differ only on
one bit. This module provides a method to convert a binary code input into a
gray code output.

#### Version

0.1.1_pre-alpha

##### History

- 02JAN22 - Created
- 09JAN22 - Add compile time parameter check, update documentation

#### Features

- Parameterized code width

#### Parameters

- pWidth  - *Width of Codes*

#### Ports

- B  - *Binary Code Input*
- G  - *Gray Code Output*

#### Related Module(s)

The cr_gray2bin module performs the inverse function of this module.

-----
### Theory of Operation

#### Patents

[US785697A](https://patents.google.com/patent/US2632058A/en)
Inventor: Frank Gray @ AT&T Corp. **Expired**

#### Functional Description

This module provides a simple conversion from binary to a Standard Reflected
Binary Gray code. A Gray code representation is where for any integer X the bit
representation is Hamming distance 1 away from the bit represenation of X+1 as
well as from X-1.

This module (and all SRBG codes) conversion only works for widths that are
powers of 2.

The Reflected Binary Gray code for a binary number x can be given by:

> G<sub>n</sub> = B<sub>n</sub>⊕⌊B<sub>n</sub>/2⌋

The module inputs and outputs are unregistered.

-----
### Verification / Simulation

Verification / simulation of the core is in a different repo. Note that this
'test' repo is under a different license.

The repo is: cr_bin2gray_test **@todo**

### Proof

The simulation of the module only tests a few possible instantiations of the
module. The algorithm used is proved in several papers that are available with
a simple search. The earlier referenced expired patent also provides additional
information.

-----
### Copyright & License

```
Copyright 2021, Luke E. McKay.
SPDX-License-Identifier: Apache-2.0
```

-----
### Technical Support & Feedback

To obtain technical support, create an issue at the GitHub repository for this
project. The issue process will address reported bugs, questions, and any other
feedback via the repository issues at the GitHub repo.

Technical support for use of this core assumes the core is being used according
to the guidelines described in the core documentation. Please reference the
included documentation before creating an issue.
