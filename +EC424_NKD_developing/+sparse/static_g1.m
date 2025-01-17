function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(0, 1);
end
[T_order, T] = EC424_NKD_developing.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(32, 1);
g1_v(1)=(-(params(23)*params(20)));
g1_v(2)=(-params(10));
g1_v(3)=(-1);
g1_v(4)=1/params(2);
g1_v(5)=1;
g1_v(6)=(-(1/params(2)));
g1_v(7)=1;
g1_v(8)=(-(params(19)*params(22)));
g1_v(9)=1-params(1);
g1_v(10)=(-1);
g1_v(11)=(-1);
g1_v(12)=1-params(12);
g1_v(13)=(-1);
g1_v(14)=1-params(13);
g1_v(15)=(-1);
g1_v(16)=1-params(14);
g1_v(17)=(-1);
g1_v(18)=1-params(15);
g1_v(19)=(-1);
g1_v(20)=1-params(16);
g1_v(21)=(-(1/params(2)));
g1_v(22)=1;
g1_v(23)=(-1);
g1_v(24)=1;
g1_v(25)=1;
g1_v(26)=(-1);
g1_v(27)=(-(params(21)*params(17)*params(22)*(1-params(19))));
g1_v(28)=1;
g1_v(29)=1;
g1_v(30)=(-1);
g1_v(31)=(-(params(21)*params(17)*params(23)*(1-params(20))));
g1_v(32)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 15, 15);
end
