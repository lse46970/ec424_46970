%%% everything the same as in baseline, though the parameter values have
%%% changed

clear all; close all; clc;

dynare EC424_NKmodel_disagreement_sensitivity3.mod
irfs_agreed = oo_.irfs;

dynare EC424_NKmodel_disagreement_sensitivity3.mod -DEXPW=1 -DECONW=0.8 -DREACTW=1
irfs_disagreed_econ = oo_.irfs;

dynare EC424_NKmodel_disagreement_sensitivity3.mod -DEXPW=1 -DECONW=1 -DREACTW=0.8
irfs_disagreed_react = oo_.irfs;

dynare EC424_NKmodel_disagreement_sensitivity3.mod -DEXPW=0.8 -DECONW=1 -DREACTW=1
irfs_disagreed_exp = oo_.irfs;

dynare EC424_NKmodel_disagreement_sensitivity3.mod -DEXPW=0.8 -DECONW=0.8 -DREACTW=0.8
irfs_disagreed_all = oo_.irfs;

close all;
 
irf_horizon = 12;

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

% FIGURE LOOKING AT THE IRFs ORDERED BY SHOCK TYPE FOR A GIVEN POLICY

figure

%%%

subplot(2,5,1)
plot(0:irf_horizon-1,irfs_agreed.j_eps_j(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.j_eps_j(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.j_eps_j(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.j_eps_j(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.j_eps_j(1:irf_horizon),'-diamond')
hold on
axis tight
title('Disagreement shock', '(Economy)')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,2)
plot(0:irf_horizon-1,irfs_agreed.y_cb_eps_j(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.y_cb_eps_j(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.y_cb_eps_j(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.y_cb_eps_j(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.y_cb_eps_j(1:irf_horizon),'-diamond')
hold on
axis tight
title('Output gap')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,3)
plot(0:irf_horizon-1,irfs_agreed.pi_eps_j(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.pi_eps_j(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.pi_eps_j(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.pi_eps_j(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.pi_eps_j(1:irf_horizon),'-diamond')
hold on
axis tight
title('Inflation')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,4)
plot(0:irf_horizon-1,irfs_agreed.i_eps_j(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.i_eps_j(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.i_eps_j(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.i_eps_j(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.i_eps_j(1:irf_horizon),'-diamond')
hold on
axis tight
title('Interest rate')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,5)
plot(0:irf_horizon-1,irfs_agreed.rn_eps_j(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.rn_eps_j(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.rn_eps_j(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.rn_eps_j(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.rn_eps_j(1:irf_horizon),'-diamond')
hold on
axis tight
title('Natural rate', ' ')
set(gca, 'FontSize', 12) % Set font size for axes

%%%

subplot(2,5,6)
plot(0:irf_horizon-1,irfs_agreed.p_eps_p(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.p_eps_p(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.p_eps_p(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.p_eps_p(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.p_eps_p(1:irf_horizon),'-diamond')
hold on
axis tight
title('Disagreement shock', '(Reaction)')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,7)
plot(0:irf_horizon-1,irfs_agreed.y_cb_eps_p(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.y_cb_eps_p(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.y_cb_eps_p(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.y_cb_eps_p(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.y_cb_eps_p(1:irf_horizon),'-diamond')
hold on
axis tight
title('Output gap')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,8)
plot(0:irf_horizon-1,irfs_agreed.pi_eps_p(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.pi_eps_p(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.pi_eps_p(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.pi_eps_p(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.pi_eps_p(1:irf_horizon),'-diamond')
hold on
axis tight
title('Inflation')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,9)
plot(0:irf_horizon-1,irfs_agreed.i_eps_p(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.i_eps_p(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.i_eps_p(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.i_eps_p(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.i_eps_p(1:irf_horizon),'-diamond')
hold on
axis tight
title('Interest rate')
set(gca, 'FontSize', 12) % Set font size for axes

subplot(2,5,10)
plot(0:irf_horizon-1,irfs_agreed.rn_eps_p(1:irf_horizon),'-o')
hold on
plot(0:irf_horizon-1,irfs_disagreed_econ.rn_eps_p(1:irf_horizon),'-square')
hold on
plot(0:irf_horizon-1,irfs_disagreed_react.rn_eps_p(1:irf_horizon),'-*')
hold on
plot(0:irf_horizon-1,irfs_disagreed_exp.rn_eps_p(1:irf_horizon),'-x')
hold on
plot(0:irf_horizon-1,irfs_disagreed_all.rn_eps_p(1:irf_horizon),'-diamond')
hold on
axis tight
title('Natural rate', ' ')
set(gca, 'FontSize', 12) % Set font size for axes


% Create a legend for all subplots
hL = legend({'Agreed' 'Disagreed (econ=0.8)' 'Disagreed (react=0.8)' 'Disagreed (exp=0.8)' 'Disagreed (all=0.8)'}, 'Orientation', 'horizontal', 'Location', 'southoutside');
newPosition = [0.195151515151515 0.00973236009732361 0.629982174688057 0.0541153979840121];
newUnits = 'normalized';
set(hL, 'Position', newPosition, 'Units', newUnits, 'FontSize', 12);

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

fig = gcf; 

width = 12; 
height = 8; 
set(fig, 'Units', 'Inches', 'Position', [0, 0, width, height]);

savefig(fig, 'ec424_sensitivity3.fig');

print(fig, 'ec424_sensitivity3', '-djpeg', '-r300'); % '-r300' sets the resolution to 300 DPI