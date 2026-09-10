Implementation of Bairstow's algorithm for finding complex conjugates zeros in a real polynomial, together with a benchmark example.

Variables in baistow function:

-pol: an array containing coefficients of the polynomial of which two conjugate roots must be found, written from the leading term to the constant term

-p, q: first estimate of the coefficients of a degree 2 polynomial which factors pol, in the form $x^2+px+q$

-e: measure of tolerance of estimates of a correct (p,q) pair such that $x^2+px+q$ divides pol

After the algorithm has completed, if returns two complex conjugate numbers wich approximate roots of pol.
