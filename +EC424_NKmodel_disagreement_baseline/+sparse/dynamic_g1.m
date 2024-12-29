function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = EC424_NKmodel_disagreement_baseline.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(60, 1);
g1_v(1)=(-(1-params(1)));
g1_v(2)=(-(params(7)*(1-params(2))));
g1_v(3)=(-1);
g1_v(4)=(-params(17));
g1_v(5)=(-params(18));
g1_v(6)=(-params(19));
g1_v(7)=(-params(20));
g1_v(8)=(-params(21));
g1_v(9)=(-1);
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=(-1);
g1_v(13)=(-1);
g1_v(14)=(-1);
g1_v(15)=(-1);
g1_v(16)=(-1);
g1_v(17)=(-1);
g1_v(18)=(-(1-params(3)));
g1_v(19)=1;
g1_v(20)=(-(params(2)*params(7)));
g1_v(21)=(-params(8));
g1_v(22)=1;
g1_v(23)=(-params(16));
g1_v(24)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1_v(25)=1;
g1_v(26)=1;
g1_v(27)=(-(params(3)*(-T(1))+(1-params(3))*(-T(1))));
g1_v(28)=(-(params(3)*T(1)+T(1)*(1-params(3))));
g1_v(29)=1;
g1_v(30)=(-1);
g1_v(31)=1;
g1_v(32)=params(5)*params(13);
g1_v(33)=1;
g1_v(34)=(-1);
g1_v(35)=1;
g1_v(36)=(-1);
g1_v(37)=1;
g1_v(38)=(-1);
g1_v(39)=1;
g1_v(40)=(-1);
g1_v(41)=1;
g1_v(42)=1;
g1_v(43)=1;
g1_v(44)=1;
g1_v(45)=1;
g1_v(46)=1;
g1_v(47)=1;
g1_v(48)=1;
g1_v(49)=1;
g1_v(50)=1;
g1_v(51)=1;
g1_v(52)=(-params(4));
g1_v(53)=(-params(1));
g1_v(54)=(-params(3));
g1_v(55)=(-(params(5)*params(13)));
g1_v(56)=(-1);
g1_v(57)=(-1);
g1_v(58)=(-1);
g1_v(59)=(-1);
g1_v(60)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 21, 68);
end
