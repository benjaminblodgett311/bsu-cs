**Benjamin Blodgett 27/08/2024**

Descriptive Statistics review  Part II Devore 9/e, sec. 1.3-1.4

Corrosion of reinforcing steel is a serious problem in concrete structures located in environments affected by severe weather conditions. For this reason, researchers have been investigating the use of reinforcing bars made of composite material. One study was carried out to develop guidelines for binding glass-fiber-reinforced plastic rebars to concrete ("Design Recommendations for Bond of GFRP Rebars to Concrete," J. _J.of Structural Engr._, 1996: 247-254). Consider the following 48 observations on measured bond strength:

3.4 3.6 3.6 3.6 3.6 3.7 3.8 3.8 3.9 4.0 4.1 4.2 4.8 4.9 5.0 5.1 5.1 5.2 5.2 5.2 5.4 5.5 5.6 5.7 6.2 6.6 7.0 7.6 7.8 8.2 8.5 8.9 9.3 9.3 9.9 10.7 10.7 11.5 12.1 12.6 13.1 13.4 13.8 14.2 15.2 17.1 20.6 25.5

To learn how to make a box-and-whisker plot, follow the following steps.

**Step 1.** Find the median of this data set: $\frac{5.7 + 6.2}{2} = 5.95$

**Step 2:** Look only at the times _below_ the median of all times for the new tool, i.e., the lower half of the data. Find the median of this set. This is the _first quartile_ (Q1) or _first 4th_. Then repeat with the times _above_ the median of all times for the new tool, i.e., the upper half of the data. Find the median of this set. This is the _third quartile_ (Q3) or _third 4th_.

$$
\begin{array}{c c}
\text{Q1} \, \frac{4.2 + 4.8}{2} & \text{Q3} \, 10.7
\end{array}
$$

**Step 3:** Write all of these numbers in order specified below.

$$
\begin{array}{c c c c c}
\text{MIN} & \text{Q1} & \text{MEDIAN} & \text{Q3} & \text{MAX}\\\\
3.4 & 4.5 & 5.95 & 10.7 & 22.5
\end{array}
$$

These 5 numbers in this order is called the _5 number summary._

**Step 4:** To check if this data set has any outliers, find the _interquartile range_ or _fourth spread (fs)_ by taking Q3 minus Q1.

$$
\begin{aligned}
fs &= \text{Q3} - \text{Q1} &= 10.7 - 4.5 &= 6.2
\end{aligned}
$$

Multiply the $fs$ by $1.5$. $1.5 \times fs = 9.3$, then add this to Q3. $\text{Q3} + 1.5 \times fs = 20$ also subtract this from Q1. $\text{Q1} - 1.5 \times fs = -4.8$.

Are there any numbers in your data set _above_ $\text{Q3} + 1.5 \times fs$? If so, list them $20.6, 25.5$

Are there any numbers in your data set _below_ $\text{Q1} - 1.5 \times fs$? If so, list them $0$

These numbers are classified as **outliers** by the $1.5 \times \text{IQR}$ criterion.

**Step 5**

_see page 3 for box-and-whisker plot_

![boxplot](worksheet2.png)

1. The distribution skews right towards higher bond strengths. It is uni-modal. The median is 5.95. There are outliers at 20.6 and 25.5. The IQR is 6.2 and the range is 3.4 to 25.5. The top quarter of data is much more spread out than the bottom quarter.
2. The standard deviation is **4.868438**. It represents the degree to which the data is dispersed compared to the mean.
