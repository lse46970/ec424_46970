function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(0, 1);
end
[T_order, T] = EC424_NKD_developing.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(15, 1);
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
