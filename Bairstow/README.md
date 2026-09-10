Implementation of Bairstow's algorithms for finding complex conjugates zeros in a real polynomial, together with a benchmark example.

Variables in baistow function:

-pol: the polynomial of which a root must be found. 

-p, q: first estimate of the coefficients of a degree 2 polynomial which factors pol, in the form x^2+px+q

-e: measure of tolerance of estimates of a correct (p,q) pair such that x^2+px+q

After the algorithm has completed, if returns two complex conjugate numbers wich approximate roots of pol.
