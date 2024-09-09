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

To get the **POS** either add up the minterms of all rows that already result in 1, or multiply all the rows that already result in 0.

### Sep 4

Because of the nature of **CMOS**, we try to make logic using NOR or NAND gates.

### Sep 9

#### K Map

- at most have to use 4 variables on exam

$$\rightarrow X,Y$$


| $$\downarrow Z$$ | 00 | 01 | 10 | 11 |
| ---------------- | -- | -- | -- | -- |
|        | $m_0$ | $m_4$ | $m_{12}$ | $m_8$  |
|        | $m_1$ | $m_5$ | $m_{13}$ | $m_9$  |
|        | $m_3$ | $m_7$ | $m_{15}$ | $m_{10}$ |
|        | $m_2$ | $m_6$ | $m_{14}$ | $m_{11}$ |

**Multiplexer**

| A | B | X | Q |
| - | - | - | - |
| A | B | 0 | A |
| A | B | 1 | B |

**Written in Logic:**
$f( A, B, X ) = A.X' + BX$

| 0 | 0 | 0 | 
| - | - | - | 
| 0 | 1 | 1 | 
| 1 | 0 | 1 | 
| 1 | 1 | $$d | d = \{1, 0\}$$ | 

- d means don't care


$$X_1 X_2 \rightarrow$$


| $$X_3 X_4 \downarrow$$ | 00 | 01 | 11 | 10 |
| ---------------- | -- | -- | -- | -- |
|   00   | 0 |  4  | 12  | 8 |
|   01   | 1 |  5  | 13  | 9 |
|   11   | 3 |  7  | 15  | 11 |
|   10   | 2 |  6  | 14  | 10 |

In binary:

| $$X_3 X_4 \downarrow$$ | 00 | 01 | 11 | 10 |
| ---------------- | -- | -- | -- | -- |
|   00   | 0000 |  0100  | 1100  | 1000 |
|   01   | 0001 |  0101  | 1101  | 1001 |
|   11   | 0011 |  0111  | 1111  | 1011 |
|   10   | 0010 |  0110  | 1110  | 1010 |

So take this table:

| $$X_3 X_4 \downarrow$$ | 00 | 01 | 11 | 10 |
| ---------------- | -- | -- | -- | -- |
|   00   | 0 |  4  | 12  | 8 |
|   01   | 1 |  5  | 13  | 9 |
|   11   | 3 |  7  | 15  | 11 |
|   10   | 2 |  6  | 14  | 10 |

Write the margins in decimal:


| $$X_3 X_4 \downarrow$$ |  0 |  1 |  3 |  4 |
| ---------------- | -- | -- | -- | -- |
|   0    | 0 |  4  | 12  | 8 |
|   1    | 1 |  5  | 13  | 9 |
|   3    | 3 |  7  | 15  | 11 |
|   2    | 2 |  6  | 14  | 10 |


| $$X_3 X_4 \downarrow$$ |  0 |  1 |  3 |  4 |
| |  0 |  1 |  3 |  4 |
| ---------------- | -- | -- | -- | -- |
|   0    | 0 |  4  | 12  | 8 |
|   1    | 1 |  5  | 13  | 9 |
|   3    | 3 |  7  | 15  | 11 |
|   2    | 2 |  6  | 14  | 10 |
