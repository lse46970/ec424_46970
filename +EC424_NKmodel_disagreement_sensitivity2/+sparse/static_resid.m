function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = EC424_NKmodel_disagreement_sensitivity2.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(21, 1);
    residual(1) = (y(4)) - (params(6)+y(6)+params(8)*y(2));
    residual(2) = (y(2)) - (y(10)+params(3)*(y(2)-T(1)*(y(4)-y(5)-y(3)))+(1-params(3))*(y(21)-T(1)*(y(4)-y(5)-y(3))));
    residual(3) = (y(3)) - (params(6));
    residual(4) = (y(1)) - (y(1)*params(4)+y(2)*params(16)+y(11));
    residual(5) = (y(5)) - (y(1)*params(1)+y(1)*(1-params(1))+y(8));
    residual(6) = (y(6)) - (y(1)*params(2)*params(7)+y(1)*params(7)*(1-params(2))+y(9));
    residual(7) = (y(7)) - (y(7)*params(17)+x(1));
    residual(8) = (y(8)) - (y(8)*params(18)+x(2));
    residual(9) = (y(9)) - (y(9)*params(19)+x(3));
    residual(10) = (y(10)) - (y(10)*params(20)+x(4));
    residual(11) = (y(11)) - (y(11)*params(21)+x(5));
    residual(12) = (y(12)) - (y(2));
    residual(13) = (y(13)) - (y(12));
    residual(14) = (y(14)) - (y(13));
    residual(15) = (y(15)) - (y(14));
    residual(16) = (y(16)) - (y(15));
    residual(17) = (y(17)) - (y(16));
    residual(18) = (y(18)) - (y(17));
    residual(19) = (y(19)) - (y(18));
    residual(20) = (y(20)) - (y(19));
    residual(21) = (y(21)) - (y(20));
end
