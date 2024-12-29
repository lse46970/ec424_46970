function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = EC424_NKmodel_disagreement_sensitivity2.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(21, 1);
    residual(1) = (y(21)) - (params(6)+y(23)+params(8)*y(19));
    residual(2) = (y(19)) - (y(27)+params(3)*(y(40)-T(1)*(y(21)-y(22)-y(20)))+(1-params(3))*(y(17)-T(1)*(y(21)-y(22)-y(20))));
    residual(3) = (y(20)) - (params(6)+params(5)*params(13)*(y(41)-y(24)));
    residual(4) = (y(18)) - (params(4)*y(39)+y(19)*params(16)+y(28));
    residual(5) = (y(22)) - (y(39)*params(1)+(1-params(1))*y(1)+y(25));
    residual(6) = (y(23)) - (y(18)*params(2)*params(7)+y(1)*params(7)*(1-params(2))+y(26));
    residual(7) = (y(24)) - (params(17)*y(3)+x(it_, 1));
    residual(8) = (y(25)) - (params(18)*y(4)+x(it_, 2));
    residual(9) = (y(26)) - (params(19)*y(5)+x(it_, 3));
    residual(10) = (y(27)) - (params(20)*y(6)+x(it_, 4));
    residual(11) = (y(28)) - (params(21)*y(7)+x(it_, 5));
    residual(12) = (y(29)) - (y(2));
    residual(13) = (y(30)) - (y(8));
    residual(14) = (y(31)) - (y(9));
    residual(15) = (y(32)) - (y(10));
    residual(16) = (y(33)) - (y(11));
    residual(17) = (y(34)) - (y(12));
    residual(18) = (y(35)) - (y(13));
    residual(19) = (y(36)) - (y(14));
    residual(20) = (y(37)) - (y(15));
    residual(21) = (y(38)) - (y(16));

end
