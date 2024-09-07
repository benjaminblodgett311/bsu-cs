# ECE FALL 2024 NOTES

## AUG 21
### 4 Basic Logic Gates

|  AND  |  OR   |  NOT  |  XOR  |
|------ |------ |------ |------ |
|  $.$  |  $+$  |  $'$  |$\oplus$|
|------ |------ |------ |------ |
| 0 0 0 | 0 0 0 |  0 1  | 0 0 0 |
| 0 1 0 | 0 1 1 |  0 1  | 0 1 1 |
| 1 0 0 | 1 0 1 |  1 0  | 1 0 1 |
| 1 1 1 | 1 1 1 |  1 0  | 1 1 0 |

## AUG 26
### Not Basic Logic Gates

| NAND  |  NOR  |  XNOR |
|------ |------ |------ |
|   ⊽   |   ⊼   |   ⊙   | *probably just draw a line over . or +*
|------ |------ |------ |
| 0 0 1 | 0 0 1 | 0 0 1 |
| 0 1 1 | 0 1 0 | 0 1 0 |
| 1 0 1 | 1 0 0 | 1 0 0 |
| 1 1 0 | 1 1 0 | 1 1 1 |

### De Morgan's Law
NAND  =  OR  NOT NOT  =  (X.Y)' = X' + Y'
NOR   =  AND NOT NOT  =  (X+Y)' = X' . Y'

### Building XOR
XY' + X'Y  (X.Y' + X'.Y)

### Homework 1
**Benjamin Blodgett 28/08/2024**
ECE 230 001

**1.**
$$
(x'.y + x.'y)'
$$

**2.**

|$x$|$y$|$x'.y$|$x.'y$| XOR |A$+$B|
|---|---|------|------|-----|-----|
| 0 | 0 |  0   |  0   |  0  |  0  |
| 0 | 1 |  1   |  0   |  1  |  1  |
| 1 | 0 |  0   |  1   |  1  |  1  |
| 1 | 1 |  0   |  0   |  0  |  0  |

### Aug 28

#### Product of Sum
**Minterm** is a/the product of a row of binary inputs that results in 1.

**Maxterm** is a/the summation of a row of binary inputs that results in 0.

To get the **POS** either summate the minterms of all rows that already result in 1, or multiply all the rows that already result in 0.

### Sep 4

Because of the nature of **CMOS**, we try to make logic using NOR or NAND gates.


