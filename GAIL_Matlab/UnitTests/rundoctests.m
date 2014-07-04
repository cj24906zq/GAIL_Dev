% Drives all doctests and unit tests

[GAILPATH,~,PATHNAMESEPARATOR] = GAILstart(0);
% filename = strcat(GAILPATH,'OutputFiles',PATHNAMESEPARATOR,...
%    'gail_doctests-', datestr(now,'yyyymmddTHHMMSS'),'.txt');
filename = strcat(GAILPATH,'OutputFiles',PATHNAMESEPARATOR,...
   'gail_doctests','.txt');
diary(filename)

tic; 
% Call doctest 
format short
doctest funappx_g
doctest funappxtau_g
doctest funappx01_g
clear in_param; doctest dt_funappx_g

doctest integral01_g
doctest integraltau_g
doctest integral_g
doctest dt_integral_g 

doctest meanMC_g
doctest cubMC_g
doctest meanMCBernoulli_g
doctest funappxlocal_g
time=toc;
% disp(time)

diary off