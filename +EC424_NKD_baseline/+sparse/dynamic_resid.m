function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(0, 1);
end
[T_order, T] = EC424_NKD_baseline.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(15, 1);
    residual(1) = (y(16)) - (y(31)-1/params(2)*(y(17)-y(25)-y(18))+y(21));
    residual(2) = (y(18)) - (params(11)+params(2)*params(7)*(y(35)-y(20)));
    residual(3) = (y(17)) - (params(11)+params(19)*params(22)*y(19)+params(23)*y(16)*params(20)+y(26)+y(23));
    residual(4) = (y(26)) - (params(21)*params(17)*(params(22)*(1-params(19))*y(13)+params(23)*(1-params(20))*y(15)));
    residual(5) = (y(19)) - (params(1)*y(34)+y(16)*params(10)+y(22));
    residual(6) = (y(25)) - (y(34)*params(18)+(1-params(18))*y(4)+y(24));
    residual(7) = (y(20)) - (params(12)*y(5)+x(1));
    residual(8) = (y(21)) - (params(13)*y(6)+x(2));
    residual(9) = (y(22)) - (params(14)*y(7)+x(3));
    residual(10) = (y(23)) - (params(15)*y(8)+x(4));
    residual(11) = (y(24)) - (params(16)*y(9)+x(5));
    residual(12) = (y(27)) - (y(4));
    residual(13) = (y(28)) - (y(12));
    residual(14) = (y(29)) - (y(1));
    residual(15) = (y(30)) - (y(14));
end
