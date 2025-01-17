function [y, T, residual, g1] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(8, 1);
  y(17)=params(11)+params(19)*params(22)*y(19)+params(23)*y(16)*params(20)+y(26)+y(23);
  residual(1)=(y(25))-(y(34)*params(18)+(1-params(18))*y(4)+y(24));
  residual(2)=(y(26))-(params(21)*params(17)*(params(22)*(1-params(19))*y(13)+params(23)*(1-params(20))*y(15)));
  residual(3)=(y(27))-(y(4));
  residual(4)=(y(28))-(y(12));
  residual(5)=(y(29))-(y(1));
  residual(6)=(y(30))-(y(14));
  residual(7)=(y(16))-(y(31)-1/params(2)*(y(17)-y(25)-y(18))+y(21));
  residual(8)=(y(19))-(params(1)*y(34)+y(16)*params(10)+y(22));
if nargout > 3
    g1_v = NaN(22, 1);
g1_v(1)=(-1);
g1_v(2)=(-(params(21)*params(17)*params(22)*(1-params(19))));
g1_v(3)=(-1);
g1_v(4)=(-(params(21)*params(17)*params(23)*(1-params(20))));
g1_v(5)=(-1);
g1_v(6)=(-(1-params(18)));
g1_v(7)=(-1);
g1_v(8)=1;
g1_v(9)=(-(1/params(2)));
g1_v(10)=1;
g1_v(11)=1/params(2);
g1_v(12)=1;
g1_v(13)=1;
g1_v(14)=1;
g1_v(15)=1;
g1_v(16)=1+1/params(2)*params(23)*params(20);
g1_v(17)=(-params(10));
g1_v(18)=1/params(2)*params(19)*params(22);
g1_v(19)=1;
g1_v(20)=(-1);
g1_v(21)=(-params(18));
g1_v(22)=(-params(1));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 24);
end
end
