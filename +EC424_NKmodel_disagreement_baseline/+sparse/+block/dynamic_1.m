function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(28)=params(17)*y(7)+x(1);
  y(29)=params(18)*y(8)+x(2);
  y(30)=params(19)*y(9)+x(3);
  y(31)=params(20)*y(10)+x(4);
  y(32)=params(21)*y(11)+x(5);
end
