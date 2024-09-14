# STATS FALL 2024 NOTES

## AUG 20

**population**
collection of well defined objects of interest

**probability**
???

**statistics**
???

**descriptive statistics**

**inferential statistics**

## plots and graphs
stem and leaf plot

**skewing**
if there are more data points on the left and less on the right, then the data skews to the _____ (right)

**mode**
most frequently occurring data point

Daniel - big guy
Anup - subcontinent
Chase - glasses

## AUG 29

A **Simple Event** is an event that has no more than 1 outcome.

$$
\text{S} = \{ \text{NNN, DNN , NDN, NND, DDN, DND, NDD, DDD} \}
$$
$$
\text{S} = \{ \text{H, TH, TTH, TTT,} \dots \}
$$

Given a sample space $S$, $P(A)$ is called the "probability of $A$" is a number satisfying:

1. $P(A) \geq 0$
2. $P(S) = 1$
3. If $A_1, A_2, \dots$ I don't know what she wrote.

## SEP 5

The **conditional probability** of $A$ given $B$ is denoted

$$
P ( A | B )
$$

eg. The probability of $A$ knowing the $B$ happened

The **general multiplication rule**:

$$
P(A \cap B) = P(A | B) \cdot P(B)
$$

**Baye's Rule**

$$
P ( A_i | B ) = \frac{P(A_i \cap B)}{P(B)}
$$

## SEP 12

**Indigence** $P(A|B) = P(A)$

**Mutually Exclusive** $A \cap B = \emptyset$

### 3.1 4-digit PIN
$$ y = \text{number of nonzero digits in a PIN}$$

|  &  | 0000 | 0001 | 0002 | $\cdots$ | 5093 | $\cdots$ | 9999 |
| --- | ---- | ---- | ---- | -------- | ---- | -------- | ---- |
| $y$ |  0   |  1   |  1   |          |  3   |          |  4   |


&  $= \{ HHH, HHT, HTH, HTT, THH, THT, TTH, TTT \}$

### all PMFS satisfy

1. $p(y) \geq 0 \forall{y}$
2. $\sum p(y) \forall{y} = 1$
