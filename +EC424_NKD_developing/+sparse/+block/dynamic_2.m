function [y, T] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(18)=params(11)+params(2)*params(7)*(y(35)-y(20));
end
