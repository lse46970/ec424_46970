%===============================================================
%                           
%       FIGURE COMPARING IRF's IN DIFFERENT SCENARIOS 
%   (scenario of different levels and sources of disagreement)
%
%===============================================================

set(0, 'DefaultLineLineWidth', 2);
figure

%%%

subplot(2,4,1)
plot(0:irf_horizon-1,irfs_agreed.e_eps_e(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.e_eps_e(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.e_eps_e(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.e_eps_e(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.e_eps_e(1:irf_horizon),'-diamond')
hold on
axis tight
title('Expectations shock')
set(gca, 'FontSize', 12)

subplot(2,4,2)
plot(0:irf_horizon-1,irfs_agreed.y_eps_e(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.y_eps_e(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.y_eps_e(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.y_eps_e(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.y_eps_e(1:irf_horizon),'-diamond')
hold on
axis tight
title('Output gap')
set(gca, 'FontSize', 12)

subplot(2,4,3)
plot(0:irf_horizon-1,irfs_agreed.pie_eps_e(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.pie_eps_e(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.pie_eps_e(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.pie_eps_e(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.pie_eps_e(1:irf_horizon),'-diamond')
hold on
axis tight
title('Inflation')
set(gca, 'FontSize', 12)

subplot(2,4,4)
plot(0:irf_horizon-1,irfs_agreed.ii_eps_e(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.ii_eps_e(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.ii_eps_e(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.ii_eps_e(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.ii_eps_e(1:irf_horizon),'-diamond')
hold on
axis tight
title('Interest rate')
set(gca, 'FontSize', 12)

%%%

subplot(2,4,5)
plot(0:irf_horizon-1,irfs_agreed.v_eps_v(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.v_eps_v(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.v_eps_v(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.v_eps_v(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.v_eps_v(1:irf_horizon),'-diamond')
hold on
axis tight
title('Monetary policy shock')
set(gca, 'FontSize', 12)

subplot(2,4,6)
plot(0:irf_horizon-1,irfs_agreed.y_eps_v(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.y_eps_v(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.y_eps_v(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.y_eps_v(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.y_eps_v(1:irf_horizon),'-diamond')
hold on
axis tight
title('Output gap')
set(gca, 'FontSize', 12)

subplot(2,4,7)
plot(0:irf_horizon-1,irfs_agreed.pie_eps_v(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.pie_eps_v(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.pie_eps_v(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.pie_eps_v(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.pie_eps_v(1:irf_horizon),'-diamond')
hold on
axis tight
title('Inflation')
set(gca, 'FontSize', 12)

subplot(2,4,8)
plot(0:irf_horizon-1,irfs_agreed.ii_eps_v(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.ii_eps_v(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.ii_eps_v(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.ii_eps_v(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.ii_eps_v(1:irf_horizon),'-diamond')
hold on
axis tight
title('Interest rate')
set(gca, 'FontSize', 12) 

%%%%%%%%%%%%%%