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
    T = EC424_NKD_baseline.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(15, 34);
g1(1,12)=1;
g1(1,27)=(-1);
g1(1,13)=1/params(2);
g1(1,14)=(-(1/params(2)));
g1(1,17)=(-1);
g1(1,21)=(-(1/params(2)));
g1(2,14)=1;
g1(2,16)=params(2)*params(7);
g1(2,29)=(-(params(2)*params(7)));
g1(3,12)=(-(params(23)*params(20)));
g1(3,13)=1;
g1(3,15)=(-(params(19)*params(22)));
g1(3,19)=(-1);
g1(3,22)=(-1);
g1(4,22)=1;
g1(4,9)=(-(params(21)*params(17)*params(22)*(1-params(19))));
g1(4,11)=(-(params(21)*params(17)*params(23)*(1-params(20))));
g1(5,12)=(-params(10));
g1(5,15)=1;
g1(5,28)=(-params(1));
g1(5,18)=(-1);
g1(6,2)=(-(1-params(18)));
g1(6,28)=(-params(18));
g1(6,20)=(-1);
g1(6,21)=1;
g1(7,3)=(-params(12));
g1(7,16)=1;
g1(7,30)=(-1);
g1(8,4)=(-params(13));
g1(8,17)=1;
g1(8,31)=(-1);
g1(9,5)=(-params(14));
g1(9,18)=1;
g1(9,32)=(-1);
g1(10,6)=(-params(15));
g1(10,19)=1;
g1(10,33)=(-1);
g1(11,7)=(-params(16));
g1(11,20)=1;
g1(11,34)=(-1);
g1(12,2)=(-1);
g1(12,23)=1;
g1(13,8)=(-1);
g1(13,24)=1;
g1(14,1)=(-1);
g1(14,25)=1;
g1(15,10)=(-1);
g1(15,26)=1;

end
