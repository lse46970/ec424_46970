function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = EC424_NKmodel_disagreement_baseline.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(21, 1);
    residual(1) = (y(25)) - (params(6)+y(27)+params(8)*y(23));
    residual(2) = (y(23)) - (y(31)+params(3)*(y(44)-T(1)*(y(25)-y(26)-y(24)))+(1-params(3))*(y(21)-T(1)*(y(25)-y(26)-y(24))));
    residual(3) = (y(24)) - (params(6)+params(5)*params(13)*(y(49)-y(28)));
    residual(4) = (y(22)) - (params(4)*y(43)+y(23)*params(16)+y(32));
    residual(5) = (y(26)) - (y(43)*params(1)+(1-params(1))*y(1)+y(29));
    residual(6) = (y(27)) - (y(22)*params(2)*params(7)+y(1)*params(7)*(1-params(2))+y(30));
    residual(7) = (y(28)) - (params(17)*y(7)+x(1));
    residual(8) = (y(29)) - (params(18)*y(8)+x(2));
    residual(9) = (y(30)) - (params(19)*y(9)+x(3));
    residual(10) = (y(31)) - (params(20)*y(10)+x(4));
    residual(11) = (y(32)) - (params(21)*y(11)+x(5));
    residual(12) = (y(33)) - (y(2));
    residual(13) = (y(34)) - (y(12));
    residual(14) = (y(35)) - (y(13));
    residual(15) = (y(36)) - (y(14));
    residual(16) = (y(37)) - (y(15));
    residual(17) = (y(38)) - (y(16));
    residual(18) = (y(39)) - (y(17));
    residual(19) = (y(40)) - (y(18));
    residual(20) = (y(41)) - (y(19));
    residual(21) = (y(42)) - (y(20));
end
