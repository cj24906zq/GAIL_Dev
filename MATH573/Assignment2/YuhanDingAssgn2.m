% Yuhan Ding, yding2@iit.edu
%
% Window 7, Matlab R2013a

n = 100;                                  e = ones(n,1);
A = spdiags([-e 2*e -e],-1:1,n,n);   
b = e;             rtol = 1e-8;   maxit = 50;
tic
x = minresqlp(A,b,rtol,maxit);
time=toc

% Enter minresqlp.  Min-length solution of symmetric (A-sI)x = b or min ||(A-sI)x - b||
% n      =    100   ||b||    = 1.000e+01   shift    = 0.000e+00   rtol     = 1.000e-08
% maxit  =     50   maxxnorm = 1.000e+07   Acondlim = 1.000e+15   TranCond = 1.000e+07
% precon =      0
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
% P      0   1.00e+01   1.41e+00   1.00e+00   1.00e+00   0.00e+00   1.00e+00   0.00e+00
%        1   9.90e+00   2.00e+00   8.67e-01   9.03e-02   1.41e-01   1.00e+00   1.00e+01
%        2   9.80e+00   2.00e+00   1.28e-01   9.11e-02   2.24e+00   3.14e+01   2.98e+01
%        3   9.70e+00   2.00e+00   6.78e-02   8.42e-02   2.24e+00   4.68e+01   5.94e+01
%        4   9.59e+00   2.00e+00   3.82e-02   8.51e-02   2.45e+00   6.78e+01   9.84e+01
%        5   9.49e+00   2.00e+00   2.56e-02   8.61e-02   2.45e+00   8.41e+01   1.47e+02
%        6   9.38e+00   2.00e+00   1.83e-02   8.70e-02   2.45e+00   1.00e+02   2.05e+02
%        7   9.27e+00   2.00e+00   1.37e-02   8.80e-02   2.45e+00   1.16e+02   2.72e+02
%        8   9.17e+00   2.00e+00   1.06e-02   8.91e-02   2.45e+00   1.32e+02   3.47e+02
%        9   9.06e+00   2.00e+00   8.48e-03   9.02e-02   2.45e+00   1.47e+02   4.32e+02
%       10   8.94e+00   2.00e+00   6.90e-03   9.13e-02   2.45e+00   1.62e+02   5.25e+02
%       11   8.83e+00   2.00e+00   5.71e-03   9.24e-02   2.45e+00   1.77e+02   6.27e+02
%       12   8.72e+00   2.00e+00   4.80e-03   9.36e-02   2.45e+00   1.92e+02   7.37e+02
%       13   8.60e+00   2.00e+00   4.08e-03   9.49e-02   2.45e+00   2.06e+02   8.56e+02
%       14   8.49e+00   2.00e+00   3.51e-03   9.62e-02   2.45e+00   2.20e+02   9.82e+02
%       15   8.37e+00   2.00e+00   3.05e-03   9.76e-02   2.45e+00   2.34e+02   1.12e+03
%       16   8.25e+00   2.00e+00   2.67e-03   9.90e-02   2.45e+00   2.47e+02   1.26e+03
%       17   8.12e+00   2.00e+00   2.35e-03   1.00e-01   2.45e+00   2.61e+02   1.41e+03
%       18   8.00e+00   2.00e+00   2.08e-03   1.02e-01   2.45e+00   2.74e+02   1.57e+03
%       19   7.87e+00   2.00e+00   1.85e-03   1.04e-01   2.45e+00   2.86e+02   1.73e+03
%       20   7.75e+00   2.00e+00   1.66e-03   1.05e-01   2.45e+00   2.99e+02   1.90e+03
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
%       21   7.62e+00   2.00e+00   1.49e-03   1.07e-01   2.45e+00   3.11e+02   2.08e+03
%       22   7.48e+00   2.00e+00   1.35e-03   1.09e-01   2.45e+00   3.23e+02   2.26e+03
%       23   7.35e+00   2.00e+00   1.22e-03   1.11e-01   2.45e+00   3.34e+02   2.45e+03
%       24   7.21e+00   2.00e+00   1.11e-03   1.13e-01   2.45e+00   3.45e+02   2.65e+03
%       25   7.07e+00   2.00e+00   1.01e-03   1.15e-01   2.45e+00   3.56e+02   2.86e+03
%       26   6.93e+00   2.00e+00   9.21e-04   1.18e-01   2.45e+00   3.67e+02   3.07e+03
%       27   6.78e+00   2.00e+00   8.43e-04   1.20e-01   2.45e+00   3.77e+02   3.28e+03
%       28   6.63e+00   2.00e+00   7.72e-04   1.23e-01   2.45e+00   3.87e+02   3.50e+03
%       29   6.48e+00   2.00e+00   7.08e-04   1.26e-01   2.45e+00   3.97e+02   3.73e+03
%       30   6.32e+00   2.00e+00   6.51e-04   1.29e-01   2.45e+00   4.06e+02   3.96e+03
%       31   6.16e+00   2.00e+00   5.99e-04   1.32e-01   2.45e+00   4.15e+02   4.20e+03
%       32   6.00e+00   2.00e+00   5.51e-04   1.36e-01   2.45e+00   4.24e+02   4.44e+03
%       33   5.83e+00   2.00e+00   5.07e-04   1.40e-01   2.45e+00   4.32e+02   4.69e+03
%       34   5.66e+00   2.00e+00   4.67e-04   1.44e-01   2.45e+00   4.40e+02   4.94e+03
%       35   5.48e+00   2.00e+00   4.30e-04   1.49e-01   2.45e+00   4.47e+02   5.19e+03
%       36   5.29e+00   2.00e+00   3.96e-04   1.54e-01   2.45e+00   4.54e+02   5.45e+03
%       37   5.10e+00   2.00e+00   3.64e-04   1.60e-01   2.45e+00   4.61e+02   5.71e+03
%       38   4.90e+00   2.00e+00   3.34e-04   1.66e-01   2.45e+00   4.67e+02   5.98e+03
%       39   4.69e+00   2.00e+00   3.06e-04   1.74e-01   2.45e+00   4.73e+02   6.25e+03
%       40   4.47e+00   2.00e+00   2.79e-04   1.82e-01   2.45e+00   4.79e+02   6.52e+03
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
%       41   4.24e+00   2.00e+00   2.54e-04   1.92e-01   2.45e+00   4.84e+02   6.79e+03
%       42   4.00e+00   2.00e+00   2.30e-04   2.04e-01   2.45e+00   4.89e+02   7.07e+03
%       43   3.74e+00   2.00e+00   2.07e-04   2.18e-01   2.46e+00   4.93e+02   7.35e+03
%       44   3.46e+00   2.00e+00   1.85e-04   2.35e-01   2.46e+00   4.98e+02   7.64e+03
%       45   3.16e+00   2.00e+00   1.62e-04   2.57e-01   2.46e+00   5.01e+02   7.92e+03
%       46   2.83e+00   2.00e+00   1.40e-04   2.86e-01   2.46e+00   5.05e+02   8.21e+03
%       47   2.45e+00   2.00e+00   1.17e-04   3.28e-01   2.47e+00   5.09e+02   8.49e+03
%       48   2.00e+00   2.00e+00   9.15e-05   3.96e-01   2.49e+00   5.14e+02   8.78e+03
%       49   1.41e+00   2.00e+00   6.17e-05   5.29e-01   2.53e+00   5.23e+02   9.07e+03
%       50   7.08e-12   2.46e-11D  2.83e-16   1.30e+00D  2.67e+00   5.54e+02   9.36e+03
% 
% 
% Exit minresqlp.   flag  =      1   A solution to Ax = b found, given rtol                 
% Exit minresqlp.   iter  =     50   (MINRES      0, MINRES-QLP     50)
% Exit minresqlp.   rnorm =  7.0844e-12     rnorm  direct =  7.0844e-12
% Exit minresqlp.                           Arnorm direct =  2.4553e-11
% Exit minresqlp.   xnorm =  9.3586e+03     xnorm  direct =  9.3586e+03
% Exit minresqlp.   Anorm =  2.6719e+00     Acond         =  5.5357e+02
% 
% time =
% 
%    2.3900e-02

n = 100;                                  e = ones(n,1);
A = spdiags([-e 2*e -e],-1:1,n,n);   
b = e;             rtol = 1e-10;   maxit = 50;
tic
x = minresqlp(A,b,rtol,maxit);
time=toc

% Enter minresqlp.  Min-length solution of symmetric (A-sI)x = b or min ||(A-sI)x - b||
% n      =    100   ||b||    = 1.000e+01   shift    = 0.000e+00   rtol     = 1.000e-10
% maxit  =     50   maxxnorm = 1.000e+07   Acondlim = 1.000e+15   TranCond = 1.000e+07
% precon =      0
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
% P      0   1.00e+01   1.41e+00   1.00e+00   1.00e+00   0.00e+00   1.00e+00   0.00e+00
%        1   9.90e+00   2.00e+00   8.67e-01   9.03e-02   1.41e-01   1.00e+00   1.00e+01
%        2   9.80e+00   2.00e+00   1.28e-01   9.11e-02   2.24e+00   3.14e+01   2.98e+01
%        3   9.70e+00   2.00e+00   6.78e-02   8.42e-02   2.24e+00   4.68e+01   5.94e+01
%        4   9.59e+00   2.00e+00   3.82e-02   8.51e-02   2.45e+00   6.78e+01   9.84e+01
%        5   9.49e+00   2.00e+00   2.56e-02   8.61e-02   2.45e+00   8.41e+01   1.47e+02
%        6   9.38e+00   2.00e+00   1.83e-02   8.70e-02   2.45e+00   1.00e+02   2.05e+02
%        7   9.27e+00   2.00e+00   1.37e-02   8.80e-02   2.45e+00   1.16e+02   2.72e+02
%        8   9.17e+00   2.00e+00   1.06e-02   8.91e-02   2.45e+00   1.32e+02   3.47e+02
%        9   9.06e+00   2.00e+00   8.48e-03   9.02e-02   2.45e+00   1.47e+02   4.32e+02
%       10   8.94e+00   2.00e+00   6.90e-03   9.13e-02   2.45e+00   1.62e+02   5.25e+02
%       11   8.83e+00   2.00e+00   5.71e-03   9.24e-02   2.45e+00   1.77e+02   6.27e+02
%       12   8.72e+00   2.00e+00   4.80e-03   9.36e-02   2.45e+00   1.92e+02   7.37e+02
%       13   8.60e+00   2.00e+00   4.08e-03   9.49e-02   2.45e+00   2.06e+02   8.56e+02
%       14   8.49e+00   2.00e+00   3.51e-03   9.62e-02   2.45e+00   2.20e+02   9.82e+02
%       15   8.37e+00   2.00e+00   3.05e-03   9.76e-02   2.45e+00   2.34e+02   1.12e+03
%       16   8.25e+00   2.00e+00   2.67e-03   9.90e-02   2.45e+00   2.47e+02   1.26e+03
%       17   8.12e+00   2.00e+00   2.35e-03   1.00e-01   2.45e+00   2.61e+02   1.41e+03
%       18   8.00e+00   2.00e+00   2.08e-03   1.02e-01   2.45e+00   2.74e+02   1.57e+03
%       19   7.87e+00   2.00e+00   1.85e-03   1.04e-01   2.45e+00   2.86e+02   1.73e+03
%       20   7.75e+00   2.00e+00   1.66e-03   1.05e-01   2.45e+00   2.99e+02   1.90e+03
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
%       21   7.62e+00   2.00e+00   1.49e-03   1.07e-01   2.45e+00   3.11e+02   2.08e+03
%       22   7.48e+00   2.00e+00   1.35e-03   1.09e-01   2.45e+00   3.23e+02   2.26e+03
%       23   7.35e+00   2.00e+00   1.22e-03   1.11e-01   2.45e+00   3.34e+02   2.45e+03
%       24   7.21e+00   2.00e+00   1.11e-03   1.13e-01   2.45e+00   3.45e+02   2.65e+03
%       25   7.07e+00   2.00e+00   1.01e-03   1.15e-01   2.45e+00   3.56e+02   2.86e+03
%       26   6.93e+00   2.00e+00   9.21e-04   1.18e-01   2.45e+00   3.67e+02   3.07e+03
%       27   6.78e+00   2.00e+00   8.43e-04   1.20e-01   2.45e+00   3.77e+02   3.28e+03
%       28   6.63e+00   2.00e+00   7.72e-04   1.23e-01   2.45e+00   3.87e+02   3.50e+03
%       29   6.48e+00   2.00e+00   7.08e-04   1.26e-01   2.45e+00   3.97e+02   3.73e+03
%       30   6.32e+00   2.00e+00   6.51e-04   1.29e-01   2.45e+00   4.06e+02   3.96e+03
%       31   6.16e+00   2.00e+00   5.99e-04   1.32e-01   2.45e+00   4.15e+02   4.20e+03
%       32   6.00e+00   2.00e+00   5.51e-04   1.36e-01   2.45e+00   4.24e+02   4.44e+03
%       33   5.83e+00   2.00e+00   5.07e-04   1.40e-01   2.45e+00   4.32e+02   4.69e+03
%       34   5.66e+00   2.00e+00   4.67e-04   1.44e-01   2.45e+00   4.40e+02   4.94e+03
%       35   5.48e+00   2.00e+00   4.30e-04   1.49e-01   2.45e+00   4.47e+02   5.19e+03
%       36   5.29e+00   2.00e+00   3.96e-04   1.54e-01   2.45e+00   4.54e+02   5.45e+03
%       37   5.10e+00   2.00e+00   3.64e-04   1.60e-01   2.45e+00   4.61e+02   5.71e+03
%       38   4.90e+00   2.00e+00   3.34e-04   1.66e-01   2.45e+00   4.67e+02   5.98e+03
%       39   4.69e+00   2.00e+00   3.06e-04   1.74e-01   2.45e+00   4.73e+02   6.25e+03
%       40   4.47e+00   2.00e+00   2.79e-04   1.82e-01   2.45e+00   4.79e+02   6.52e+03
% 
%     iter     rnorm     Arnorm   Compatible     LS        Anorm      Acond      xnorm
%       41   4.24e+00   2.00e+00   2.54e-04   1.92e-01   2.45e+00   4.84e+02   6.79e+03
%       42   4.00e+00   2.00e+00   2.30e-04   2.04e-01   2.45e+00   4.89e+02   7.07e+03
%       43   3.74e+00   2.00e+00   2.07e-04   2.18e-01   2.46e+00   4.93e+02   7.35e+03
%       44   3.46e+00   2.00e+00   1.85e-04   2.35e-01   2.46e+00   4.98e+02   7.64e+03
%       45   3.16e+00   2.00e+00   1.62e-04   2.57e-01   2.46e+00   5.01e+02   7.92e+03
%       46   2.83e+00   2.00e+00   1.40e-04   2.86e-01   2.46e+00   5.05e+02   8.21e+03
%       47   2.45e+00   2.00e+00   1.17e-04   3.28e-01   2.47e+00   5.09e+02   8.49e+03
%       48   2.00e+00   2.00e+00   9.15e-05   3.96e-01   2.49e+00   5.14e+02   8.78e+03
%       49   1.41e+00   2.00e+00   6.17e-05   5.29e-01   2.53e+00   5.23e+02   9.07e+03
%       50   7.08e-12   2.46e-11D  2.83e-16   1.30e+00D  2.67e+00   5.54e+02   9.36e+03
% 
% 
% Exit minresqlp.   flag  =      1   A solution to Ax = b found, given rtol                 
% Exit minresqlp.   iter  =     50   (MINRES      0, MINRES-QLP     50)
% Exit minresqlp.   rnorm =  7.0844e-12     rnorm  direct =  7.0844e-12
% Exit minresqlp.                           Arnorm direct =  2.4553e-11
% Exit minresqlp.   xnorm =  9.3586e+03     xnorm  direct =  9.3586e+03
% Exit minresqlp.   Anorm =  2.6719e+00     Acond         =  5.5357e+02
% 
% time =
% 
%    3.5711e-02

%Suggestion for improvement: I tried minresqlp with different rtol 1e-8 and
%1e-10, but it need same number of iterations to reach the rtol. And this
%matrix A is a well condtioned matrix. How to increase the efficiency for
%well conditioned matrix need to be think. And for preconditioning, is it
%possible to give the user some idear how to choose the precondition
%matrix.