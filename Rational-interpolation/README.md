Implementing Thiele's algorithm for rational interpolation, together with a polSum function used in its interpolation and a benchmark example.

The thieleFraction function takes x and y values of the nodes and returns arrays of coefficients p of the numerator and coefficients q of the denominator of the rational approximation, written from leading term to contant term.

The polSum function takes coeffients arrays p,q of two polynomials and returns the coefficient array of their sum, again written from leading term to constant term.
