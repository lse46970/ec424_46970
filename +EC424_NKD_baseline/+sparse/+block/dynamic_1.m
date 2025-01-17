function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(20)=params(12)*y(5)+x(1);
  y(21)=params(13)*y(6)+x(2);
  y(22)=params(14)*y(7)+x(3);
  y(23)=params(15)*y(8)+x(4);
  y(24)=params(16)*y(9)+x(5);
end
