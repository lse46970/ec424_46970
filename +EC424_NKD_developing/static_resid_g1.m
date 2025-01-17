function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = EC424_NKD_developing.static_g1_tt(T, y, x, params);
    end
    residual = EC424_NKD_developing.static_resid(T, y, x, params, false);
    g1       = EC424_NKD_developing.static_g1(T, y, x, params, false);

end
