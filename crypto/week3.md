# Math 308 Week 3 Problem Set - Benjamin Blodgett

## 1

G is the set of all invertible 2x2 matrices with real numbers. In order for these matrices to constitute a **group** we must furthur stipulate that they satisfy **closure**, **associativity**, **identity** and are **invertible**.

## 2

The group operation is matrix multiplication. Here is an example from [learnopengl.com](https://learnopengl.com/Getting-started/Transformations) (because I failed linear algebra):

$$\begin{bmatrix} \color{red}1 & \color{red}2 \\ \color{green}3 & \color{green}4\end{bmatrix} \cdot \begin{bmatrix} \color{blue}5 & \color{purple}6 \\ \color{blue}7 & \color{purple}8 \end{bmatrix} = \begin{bmatrix} \color{red}1 \cdot \color{blue}5 + \color{red}2 \cdot \color{blue}7 & \color{red}1 \cdot \color{purple}6 + \color{red}2 \cdot \color{purple}8 \\ \color{green}3 \cdot \color{blue}5 + \color{green}4 \cdot \color{blue}7 & \color{green}3 \cdot \color{purple}6 + \color{green}4 \cdot \color{purple}8 \end{bmatrix} = \begin{bmatrix} 19 & 22 \\ 43 & 50 \end{bmatrix}$$

## 3

We know from linear algebra that the multiplication of two square matices of equal dimension results in a third square matrix of equal dimension. Therefore, multiplication of 2x2 matrices must satisfy **closure**. We also know that matrices are fundamentally **associative**, so that property is also satisfied. We also know that for every square matrix there exists an **identity** matrix for 2x2 matrices, namely: 

$$\begin{bmatrix} 1 & 0 \\ 0 & 1 \end{bmatrix}$$

We already assumed that our matrices are **invertible**. There exist many invertible 2x2 matrices, namely, any matrix whose determinant is not equal to zero.

## 4

We can see from above that 

$$\begin{bmatrix} 1 & 2 \\ 3 & 4\end{bmatrix} \cdot \begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix} = \begin{bmatrix} 19 & 22 \\ 43 & 50 \end{bmatrix}$$

If indeed our set is commutative, then we shall discover that

$$\begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix} \cdot \begin{bmatrix} 1 & 2 \\ 3 & 4\end{bmatrix} = \begin{bmatrix} 19 & 22 \\ 43 & 50 \end{bmatrix}$$

But instead, note that

$$\begin{bmatrix} 5 & 6 \\ 7 & 8 \end{bmatrix} \cdot \begin{bmatrix} 1 & 2 \\ 3 & 4\end{bmatrix} = \begin{bmatrix} 5 \cdot 1 + 6 \cdot 3 & 5 \cdot 2 + 6 \cdot 4 \\ 7 \cdot 1 + 8 \cdot 3 & 7 \cdot 2 + 8 \cdot 4 \end{bmatrix} = \begin{bmatrix} 23 & 34 \\ 31 & 46 \end{bmatrix}$$

Thus, they are non-commutative, and non-abelian.
