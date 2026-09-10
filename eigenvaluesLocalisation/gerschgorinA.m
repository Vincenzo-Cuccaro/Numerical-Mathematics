clear 
clc
close all;

A = [ 15 -2   2;
      1   10 -3;
     -2   1   0  ];

B = magic(7);

C = [12-7i  3+4i;
     5+12i -11+9i];

%plotGerschgorin(A);
plotGerschgorin(B);
%plotGerschgorin(C)
