Implements Newton's method for finding zeros of a function. It comes in three variants for efficiency: simple root finding, multiple root finding on known order, multiple root finding of unknown order.

 The function newtonSimpleRoot finds a root and is most efficient for simple roots. Takes as input the first guess x0, the error value e admittable in approximating the root, the function handle f of which we must find its root, and the function handle df of its derivative (or its approximation). It returns the approximated root xi and the number of steps n used to find it. 

 The above function efficiency lowers for root of order greater than one, and if such order is not known it is preferrable to use newtonMultipleUnknownOrder. If the order is instead known, it is preferrable to use newtonMultipleKnownOrder, which takes the order p as a variable.
