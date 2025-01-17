
%===============================================================
%                           
%       NK MODEL WITH DISAGREEMENT ABOUT MONETARY POLICY
%          (evaluating shocks in diferent scenarios)
%      - Sensitivity 3: Developing with communication -
%
%===============================================================


clear all; close all; clc;

dynare EC424_NKD_developing.mod
irfs_agreed = oo_.irfs;

dynare EC424_NKD_developing.mod -DECONW=0.7  -DCOMMW=0.5
irfs_disagreed_econ = oo_.irfs;

dynare EC424_NKD_developing.mod -DREACTW=0.7  -DCOMMW=0.5
irfs_disagreed_react = oo_.irfs;

dynare EC424_NKD_developing.mod -DECONW=0.7 -DREACTW=0.7  -DCOMMW=0.5
irfs_disagreed_exp = oo_.irfs;

dynare EC424_NKD_developing.mod -DEXPW=0.7 -DECONW=0.7 -DREACTW=0.7  -DCOMMW=0.5
irfs_disagreed_all = oo_.irfs;

close all;
 
irf_horizon = 12;

%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

% Create a figure
run EC424_NKD_Figure.m;

% Create a legend for all subplots
hL = legend({'Agreed' 'Disagreed (econ=0.8)' 'Disagreed (react=0.8)' 'Disagreed (econ=react=0.8)' 'Disagreed (all=0.8)'}, 'Orientation', 'horizontal', 'Location', 'southoutside');
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