function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = EC424_NKD_developing.static_g1_tt(T, y, x, params);
end
g1 = zeros(15, 15);
g1(1,2)=1/params(2);
g1(1,3)=(-(1/params(2)));
g1(1,6)=(-1);
g1(1,10)=(-(1/params(2)));
g1(2,3)=1;
g1(3,1)=(-(params(23)*params(20)));
g1(3,2)=1;
g1(3,4)=(-(params(19)*params(22)));
g1(3,8)=(-1);
g1(3,11)=(-1);
g1(4,11)=1;
g1(4,13)=(-(params(21)*params(17)*params(22)*(1-params(19))));
g1(4,15)=(-(params(21)*params(17)*params(23)*(1-params(20))));
g1(5,1)=(-params(10));
g1(5,4)=1-params(1);
g1(5,7)=(-1);
g1(6,4)=(-1);
g1(6,9)=(-1);
g1(6,10)=1;
g1(7,5)=1-params(12);
g1(8,6)=1-params(13);
g1(9,7)=1-params(14);
g1(10,8)=1-params(15);
g1(11,9)=1-params(16);
g1(12,4)=(-1);
g1(12,12)=1;
g1(13,12)=(-1);
g1(13,13)=1;
g1(14,1)=(-1);
g1(14,14)=1;
g1(15,14)=(-1);
g1(15,15)=1;

end
