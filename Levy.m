% Disclaimer 
% the Levy code taken from this work https://link.springer.com/article/10.1007/s00521-015-1920-1 
% The codes for this function have been taken from: 
% Levy exponent and coefficient
% For details, see Chapter 11 of the following book:
% Xin-She Yang, Nature-Inspired Optimization Algorithms, Elsevier, (2014).

function o=Levy(d)

beta=3/2;
%Eq. (3.10) in this paper https://link.springer.com/article/10.1007/s00521-015-1920-1
sigma=(gamma(1+beta)*sin(pi*beta/2)/(gamma((1+beta)/2)*beta*2^((beta-1)/2)))^(1/beta);
u=randn(1,d)*sigma;
v=randn(1,d);
step=u./abs(v).^(1/beta);

% Eq. (3.9) in this paper https://link.springer.com/article/10.1007/s00521-015-1920-1
o=0.01*step;