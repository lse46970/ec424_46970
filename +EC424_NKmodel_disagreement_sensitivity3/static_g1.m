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
    T = EC424_NKmodel_disagreement_sensitivity3.static_g1_tt(T, y, x, params);
end
g1 = zeros(21, 21);
g1(1,2)=(-params(8));
g1(1,4)=1;
g1(1,6)=(-1);
g1(2,2)=1-params(3);
g1(2,3)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1(2,4)=(-(params(3)*(-T(1))+(1-params(3))*(-T(1))));
g1(2,5)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1(2,10)=(-1);
g1(2,21)=(-(1-params(3)));
g1(3,3)=1;
g1(4,1)=1-params(4);
g1(4,2)=(-params(16));
g1(4,11)=(-1);
g1(5,1)=(-1);
g1(5,5)=1;
g1(5,8)=(-1);
g1(6,1)=(-(params(2)*params(7)+params(7)*(1-params(2))));
g1(6,6)=1;
g1(6,9)=(-1);
g1(7,7)=1-params(17);
g1(8,8)=1-params(18);
g1(9,9)=1-params(19);
g1(10,10)=1-params(20);
g1(11,11)=1-params(21);
g1(12,2)=(-1);
g1(12,12)=1;
g1(13,12)=(-1);
g1(13,13)=1;
g1(14,13)=(-1);
g1(14,14)=1;
g1(15,14)=(-1);
g1(15,15)=1;
g1(16,15)=(-1);
g1(16,16)=1;
g1(17,16)=(-1);
g1(17,17)=1;
g1(18,17)=(-1);
g1(18,18)=1;
g1(19,18)=(-1);
g1(19,19)=1;
g1(20,19)=(-1);
g1(20,20)=1;
g1(21,20)=(-1);
g1(21,21)=1;

end
