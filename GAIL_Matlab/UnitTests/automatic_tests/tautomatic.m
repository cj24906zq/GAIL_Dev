%% Set the directory for running our matlab test
cd /home/lantoni/GAIL_tests/repo/gail-development/GAIL_Matlab/
% Install the latest
GAIL_Install
% Go to the tests direcoty (% is comment in matlab environment)
cd /home/lantoni/GAIL_tests/repo/gail-development/GAIL_Matlab/UnitTests/
%runtests %> /home/lantoni/GAIL_tests/test_results.txt former tests
rundoctests
rununittests
