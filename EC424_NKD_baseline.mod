
%===============================================================
%                           
%       NK MODEL WITH DISAGREEMENT ABOUT MONETARY POLICY
%             (Baseline model: advanced economy)
%
%===============================================================

// Preamble

var y ii rn pie a g u v e ex m;

varexo eps_a eps_g eps_u eps_v eps_e;

parameters beta sigma phi epsilon theta alpha PSI_yan THETA lambda kappa rho rho_a rho_g rho_u rho_v rho_e rho_m OMEGA TAU MU IOTA phi_pie phi_y;

beta = 0.99;
sigma = 1;
rho = 1/beta-1;
phi_pie = 1.5;
phi_y = 0.5/4;

phi = 5;
alpha = 1/4;
epsilon = 9;
theta = 3/4;
PSI_yan = (1+phi)/(sigma*(1-alpha)+phi+alpha);

THETA = (1-alpha)/(1-alpha+alpha*epsilon);
lambda = (1-theta)*(1-beta*theta)*THETA/theta;
kappa = lambda*(sigma+(phi+alpha)/(1-alpha));

rho_a = 0.9;
rho_g = 0.9;
rho_u = 0.8;
rho_v = 0.7;
rho_e = 0.9;
rho_m = 0.7;
% NB: Not all shocks will be analysed and thus relevant eventually

%---------------------------------------------------------
%                      SCENARIOS
%---------------------------------------------------------

@#ifndef EXPW
  OMEGA=1;  % Weight on rational beliefs, 1 i fully rational
@#else
  OMEGA=@{EXPW};
@#endif

@#ifndef ECONW
  MU=1;  % Weight on agreement about state of econ, 1 is fully agreed
@#else
  MU=@{ECONW};
@#endif

@#ifndef REACTW
  TAU=1;  % Weight on agreement about reaction coeff, 1 is fully agreed
@#else
  TAU=@{REACTW};
@#endif

@#ifndef COMMW
  IOTA=0;  % CB's preference for communication to offset disagreement, 1 is fully offsetting
@#else
  IOTA=@{COMMW};
@#endif


%---------------------------------------------------------
%                      THE MODEL
%---------------------------------------------------------
model(linear);

// IS-Equation
y = y(+1)-1/sigma*(ii-ex-rn) + g;   % output gap
rn=rho+sigma*PSI_yan*(a(+1)-a);     % SS natural interest rate

// Taylor-Rule
ii = rho+(TAU*phi_pie)*pie+phi_y*(MU*y) + m + v;   % quarterly coefficients
m = IOTA*(rho_m*((1-TAU)*phi_pie*pie(-3)+(1-MU)*phi_y*y(-3))); % CB communication

// Phillips Curve
pie = beta*pie(+1)+kappa*y + u;

// Expectations
ex = OMEGA*pie(+1) + (1-OMEGA)*pie(-1) + e;


% Autogressive erros

a = rho_a*a(-1) + eps_a;         % shock to productivity
g = rho_g*g(-1) + eps_g;         % shock to y  (aggregate demand shock)
u = rho_u*u(-1) + eps_u;         % shock to pie (cost push shock)
v = rho_v*v(-1) + eps_v;         % shock to i (monetary policy shock)
e = rho_e*e(-1) + eps_e;         % expectations shock

end;

%---------------------------------------------------------
%                      Steady state
%---------------------------------------------------------

check;

%---------------------------------------------------------
%                      Shocks
%---------------------------------------------------------

shocks;
  var eps_a = 1;
  var eps_g = 0;
  var eps_u = 0;
  var eps_v = 1;
  var eps_e = 1;
end;

%---------------------------------------------------------
%                   IRF Computation
%---------------------------------------------------------

stoch_simul(periods=1000,irf=12);