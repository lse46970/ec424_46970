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
    T = EC424_NKD_baseline.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(15, 1);
    residual(1) = (y(12)) - (y(27)-1/params(2)*(y(13)-y(21)-y(14))+y(17));
    residual(2) = (y(14)) - (params(11)+params(2)*params(7)*(y(29)-y(16)));
    residual(3) = (y(13)) - (params(11)+params(19)*params(22)*y(15)+params(23)*y(12)*params(20)+y(22)+y(19));
    residual(4) = (y(22)) - (params(21)*params(17)*(params(22)*(1-params(19))*y(9)+params(23)*(1-params(20))*y(11)));
    residual(5) = (y(15)) - (params(1)*y(28)+y(12)*params(10)+y(18));
    residual(6) = (y(21)) - (y(28)*params(18)+(1-params(18))*y(2)+y(20));
    residual(7) = (y(16)) - (params(12)*y(3)+x(it_, 1));
    residual(8) = (y(17)) - (params(13)*y(4)+x(it_, 2));
    residual(9) = (y(18)) - (params(14)*y(5)+x(it_, 3));
    residual(10) = (y(19)) - (params(15)*y(6)+x(it_, 4));
    residual(11) = (y(20)) - (params(16)*y(7)+x(it_, 5));
    residual(12) = (y(23)) - (y(2));
    residual(13) = (y(24)) - (y(8));
    residual(14) = (y(25)) - (y(1));
    residual(15) = (y(26)) - (y(10));

end
