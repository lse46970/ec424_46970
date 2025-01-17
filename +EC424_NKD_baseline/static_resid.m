function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = EC424_NKD_baseline.static_resid_tt(T, y, x, params);
end
residual = zeros(15, 1);
    residual(1) = (y(1)) - (y(1)-1/params(2)*(y(2)-y(10)-y(3))+y(6));
    residual(2) = (y(3)) - (params(11));
    residual(3) = (y(2)) - (params(11)+params(19)*params(22)*y(4)+params(23)*y(1)*params(20)+y(11)+y(8));
    residual(4) = (y(11)) - (params(21)*params(17)*(params(22)*(1-params(19))*y(13)+params(23)*(1-params(20))*y(15)));
    residual(5) = (y(4)) - (y(4)*params(1)+y(1)*params(10)+y(7));
    residual(6) = (y(10)) - (y(4)*params(18)+y(4)*(1-params(18))+y(9));
    residual(7) = (y(5)) - (y(5)*params(12)+x(1));
    residual(8) = (y(6)) - (y(6)*params(13)+x(2));
    residual(9) = (y(7)) - (y(7)*params(14)+x(3));
    residual(10) = (y(8)) - (y(8)*params(15)+x(4));
    residual(11) = (y(9)) - (y(9)*params(16)+x(5));
    residual(12) = (y(12)) - (y(4));
    residual(13) = (y(13)) - (y(12));
    residual(14) = (y(14)) - (y(1));
    residual(15) = (y(15)) - (y(14));

end
