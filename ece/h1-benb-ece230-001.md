**Benjamin Blodgett 28/08/2024**
ECE 230 001

**1.**
$$
(x'.y + x.'y)'
$$

**2.**

The above equation does _not_ represent XOR.

$$
\begin{array}{c c}
\text{where A} = x'.y & \text{and B} = x.'y
\end{array}
$$

|$x$|$y$|$x'.y$|$x.'y$| XOR | A+B | A+B'|
|---|---|------|------|-----|-----|-----|
| 0 | 0 |  0   |  0   |  0  |  0  |  1  |
| 0 | 1 |  1   |  0   |  1  |  1  |  0  |
| 1 | 0 |  0   |  1   |  1  |  1  |  0  |
| 1 | 1 |  0   |  0   |  0  |  0  |  1  |

In the above table you can see that the sum of A and B is XOR while the not of their sum is XORn't.
