// The New Keynesian model with disagreement
//------------------------------------------
// Preamble
//------------------------------------------
// Variables
var pi y_cb rn i ex react a e p j u;
% v deleted
varexo eps_a eps_e eps_p eps_j eps_u;
% eps_v deleted
//
// Parameters
parameters omega mu iota beta sigma rho phi_pi phi_y phi epsilon theta alpha PSI_yan THETA lambda kappa rho_a rho_e rho_p rho_j rho_u;
% rho_v and LAMBA_v deleted

beta = 0.99;
sigma = 1;
rho = 1/beta-1;
phi_pi = 1.5;
phi_y = 0.5/4;

phi = 5;
alpha = 1/4;
epsilon = 9;
theta = 3/4;
PSI_yan = (1+phi)/(sigma*(1-alpha)+phi+alpha);

THETA = (1-alpha)/(1-alpha+alpha*epsilon);
lambda = (1-theta)*(1-beta*theta)*THETA/theta;
kappa = lambda*(sigma+(phi+alpha)/(1-alpha));

%rho_v = 0.5;
rho_a = 0.5;
rho_e = 0.5;
rho_p = 0.5;
rho_j = 0.5;
rho_u = 0.5;

@#ifndef EXPW
  omega=1;  % Weight on rational beliefs, 1 i fully rational
@#else
  omega=@{EXPW};
@#endif

@#ifndef REACTW
  mu=1;  % Weight on agreement about reaction coeff, 1 is fully agreed
@#else
  mu=@{REACTW};
@#endif

@#ifndef ECONW
  iota=1;  % Weight on agreement about state of econ, 1 is fully agreed
@#else
  iota=@{ECONW};
@#endif

//------------------------------------------
// Model
//------------------------------------------
model(linear);
// Taylor-Rule
i = rho+(react)+phi_y*y_cb; // Quarterly coefficients
//
// IS-Equation
y_cb = iota*((y_cb(+1)-1/sigma*(i-ex-rn))) + (1-iota)*((y_cb(-11)-1/sigma*(i-ex-rn))) + j; // y is output gap 
rn=rho+sigma*PSI_yan*(a(+1)-a); // natural rate of interest

// Phillips Curve
pi = beta*pi(+1)+kappa*y_cb + u; // (21)

// Expectations
ex = omega*pi(+1) + (1-omega)*pi(-1) + e; // omega = 1 is rationality
// Reactions
react = mu*phi_pi*pi + (1-mu)*phi_pi*pi(-1) + p; // mu = 1 is agreement
// State of the economy



// Autoregressive Error
a = rho_a*a(-1) + eps_a; // technology shock
%v = rho_v*v(-1) + eps_v; // shock to i
e = rho_e*e(-1) + eps_e; // shock to expectations
p = rho_p*p(-1) + eps_p; // shock to reaction function
j = rho_j*j(-1) + eps_j; // shock to disagrement about economy
u = rho_u*u(-1) + eps_u; // shock to pi
end;
//

//------------------------------------------
// Steady State
//------------------------------------------
check;
//------------------------------------------
// Shocks
//------------------------------------------
shocks;
%var eps_v = 0;
var eps_a = 0;
var eps_e = 1;
var eps_p = 1;
var eps_j = 1;
var eps_u = 0;
end;
//------------------------------------------
// Computation
//------------------------------------------

stoch_simul(periods=1000,irf=12);
