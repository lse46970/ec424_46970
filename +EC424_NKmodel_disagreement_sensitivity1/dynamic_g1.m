function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = EC424_NKmodel_disagreement_sensitivity1.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(21, 46);
g1(1,19)=(-params(8));
g1(1,21)=1;
g1(1,23)=(-1);
g1(2,19)=1;
g1(2,40)=(-params(3));
g1(2,20)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1(2,21)=(-(params(3)*(-T(1))+(1-params(3))*(-T(1))));
g1(2,22)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1(2,27)=(-1);
g1(2,17)=(-(1-params(3)));
g1(3,20)=1;
g1(3,24)=params(5)*params(13);
g1(3,41)=(-(params(5)*params(13)));
g1(4,18)=1;
g1(4,39)=(-params(4));
g1(4,19)=(-params(16));
g1(4,28)=(-1);
g1(5,1)=(-(1-params(1)));
g1(5,39)=(-params(1));
g1(5,22)=1;
g1(5,25)=(-1);
g1(6,1)=(-(params(7)*(1-params(2))));
g1(6,18)=(-(params(2)*params(7)));
g1(6,23)=1;
g1(6,26)=(-1);
g1(7,3)=(-params(17));
g1(7,24)=1;
g1(7,42)=(-1);
g1(8,4)=(-params(18));
g1(8,25)=1;
g1(8,43)=(-1);
g1(9,5)=(-params(19));
g1(9,26)=1;
g1(9,44)=(-1);
g1(10,6)=(-params(20));
g1(10,27)=1;
g1(10,45)=(-1);
g1(11,7)=(-params(21));
g1(11,28)=1;
g1(11,46)=(-1);
g1(12,2)=(-1);
g1(12,29)=1;
g1(13,8)=(-1);
g1(13,30)=1;
g1(14,9)=(-1);
g1(14,31)=1;
g1(15,10)=(-1);
g1(15,32)=1;
g1(16,11)=(-1);
g1(16,33)=1;
g1(17,12)=(-1);
g1(17,34)=1;
g1(18,13)=(-1);
g1(18,35)=1;
g1(19,14)=(-1);
g1(19,36)=1;
g1(20,15)=(-1);
g1(20,37)=1;
g1(21,16)=(-1);
g1(21,38)=1;

end
