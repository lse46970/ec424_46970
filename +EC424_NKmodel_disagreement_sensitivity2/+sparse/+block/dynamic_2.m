function [y, T] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(24)=params(6)+params(5)*params(13)*(y(49)-y(28));
end
