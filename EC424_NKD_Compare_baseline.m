
%===============================================================
%                           
%       NK MODEL WITH DISAGREEMENT ABOUT MONETARY POLICY
%          (evaluating shocks in diferent scenarios)
%                - Baseline: no communication -
%
%===============================================================


clear all; close all; clc;

dynare EC424_NKD_baseline.mod
irfs_agreed = oo_.irfs;

dynare EC424_NKD_baseline.mod -DECONW=0.8
irfs_disagreed_econ = oo_.irfs;

dynare EC424_NKD_baseline.mod -DREACTW=0.8
irfs_disagreed_react = oo_.irfs;

dynare EC424_NKD_baseline.mod -DECONW=0.8 -DREACTW=0.8
irfs_disagreed_exp = oo_.irfs;

dynare EC424_NKD_baseline.mod -DEXPW=0.8 -DECONW=0.8 -DREACTW=0.8
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

savefig(fig, 'ec424_baseline.fig');

print(fig, 'ec424_baseline', '-djpeg', '-r300'); % '-r300' sets the resolution to 300 DPI