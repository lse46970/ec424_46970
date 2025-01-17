function [y, T, residual, g1] = static_7(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(9, 1);
  residual(1)=(y(1))-(y(1)-1/params(2)*(y(2)-y(10)-y(3))+y(6));
  residual(2)=(y(2))-(params(11)+params(19)*params(22)*y(4)+params(23)*y(1)*params(20)+y(11)+y(8));
  residual(3)=(y(11))-(params(21)*params(17)*(params(22)*(1-params(19))*y(13)+params(23)*(1-params(20))*y(15)));
  residual(4)=(y(4))-(y(4)*params(1)+y(1)*params(10)+y(7));
  residual(5)=(y(10))-(y(4)*params(18)+y(4)*(1-params(18))+y(9));
  residual(6)=(y(12))-(y(4));
  residual(7)=(y(13))-(y(12));
  residual(8)=(y(14))-(y(1));
  residual(9)=(y(15))-(y(14));
if nargout > 3
    g1_v = NaN(21, 1);
g1_v(1)=1/params(2);
g1_v(2)=1;
g1_v(3)=(-(params(19)*params(22)));
g1_v(4)=1-params(1);
g1_v(5)=(-1);
g1_v(6)=(-1);
g1_v(7)=(-1);
g1_v(8)=1;
g1_v(9)=(-(params(23)*params(20)));
g1_v(10)=(-params(10));
g1_v(11)=(-1);
g1_v(12)=(-(1/params(2)));
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=(-1);
g1_v(16)=(-(params(21)*params(17)*params(22)*(1-params(19))));
g1_v(17)=1;
g1_v(18)=1;
g1_v(19)=(-1);
g1_v(20)=(-(params(21)*params(17)*params(23)*(1-params(20))));
g1_v(21)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 9, 9);
end
end
