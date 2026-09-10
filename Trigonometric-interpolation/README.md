Implementing tigonometric interpolation, together with two benchmark examples.

The function trigInterp takes as input the array x of points on which to calculate the interpolating trigonometric polynomial and the array y_values of the function to be interpolated, assumed to be calculated at equally spaced points in [0, 2pi). It returns the values of the trigonometric polynomial calculated on the points of x.

The function makes use of MatLab's Fast Fourier Transform algorithm.
