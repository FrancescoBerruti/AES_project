clc; clear all; 

% %% PARAMETERS
%     Tstart  = 293.15;  %"initial T, all elements";
%     roa     = 1.1;     %"density of air";
%     ca      = 1020;    %"specific heat of air";
%     row     = 2000;    %"density of walls";
%     cw      = 800;     %"specific heat of walls";
%     lambdaw = 1.5;     %"thermal conductivity of walls";
%     gammawi = 12;      %"internal ccht, all walls";
%     gammawe = 15;      %"external ccht, all walls";
%     Gdo     = 300;     %"conductance of open doors";
%     Lr12    = 4;       %"length of rooms 1 and 2";
%     Lr3     = 4;       %"length of room 3";
%     Wr1     = 6;       %"width of room 1";
%     Wr2     = 4;       %"width of room 2";
%     Wr3     = 10;      %"width of room 3";
%     H       = 3;       %"height, all rooms";
%     tw      = 0.1;     %"thickness of all walls";
%     
%     Cr1 = ca*roa*Lr12*Wr1*H;
%     Cr2 = ca*roa*Lr12*Wr2*H;
%     Cr3 = ca*roa*Lr3*Wr3*H;
%     Cw13 = cw*row*Wr1*tw*H;
%     Cw23 = cw*row*Wr2*tw*H;
%     Cw1e = cw*row*Wr1*tw*H;
%     Cw2e = cw*row*Wr2*tw*H;
%     Cw3e = cw*row*Wr3*tw*H;
%     Gr1w13 = 1/(1/gammawi/(Wr1*H) + 0.5*tw/lambdaw/(Wr1*H));
%     Gr1w1e = 1/(1/gammawi/(Wr1*H) + 0.5*tw/lambdaw/(Wr1*H));
%     Gr2w23 = 1/(1/gammawi/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H));
%     Gr2w2e = 1/(1/gammawi/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H));
%     Gr3w13 = 1/(1/gammawi/(Wr1*H) + 0.5*tw/lambdaw/(Wr1*H));
%     Gr3w23 = 1/(1/gammawi/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H));
%     Gr3w3e = 1/(1/gammawi/(Wr3*H) + 0.5*tw/lambdaw/(Wr3*H));
%     Gw1e = 1/(1/gammawe/(Wr1*H) + 0.5*tw/lambdaw/(Wr1*H));
%     Gw2e = 1/(1/gammawe/(Wr2*H) + 0.5*tw/lambdaw/(Wr2*H));
%     Gw3e = 1/(1/gammawe/(Wr3*H) + 0.5*tw/lambdaw/(Wr3*H));
  
  
 % From Gigliermo
  % Parameters of the modelica model using the results of the prof model
  
Cr1 = 80784;
Cr2 = 53856; 
Cr3 = 134640; 
Cw13 = 2.88e+06; 
Cw23 = 1.92e+06; 
Cw1e = 2.88e+06; 
Cw2e = 1.92e+06; 
Cw3e = 4.8e+06;
Gr1w13 = 154.286; 
Gr1w1e = 154.286; 
Gr2w23 = 102.857; 
Gr2w2e = 102.857; 
Gr3w13 = 154.286; 
Gr3w23 = 102.857; 
Gr3w3e = 257.143;
Gw1e = 180;
Gw2e = 120;
Gw3e = 300;

% % full A Matrix
% A = [-(Gr1w13 + Gr1w1e) / Cr1,  0,   0 , Gr1w13 / Cr1, 0, Gr1w1e / Cr1, 0, 0;
%      0, -(Gr2w23 + Gr2w2e) / Cr2, 0, 0,   Gr2w23 / Cr2, 0, Gr2w2e / Cr2, 0;
%      0, 0, -Gr3w3e / Cr3, Gr3w13 / Cr3, Gr3w23 / Cr3, 0, 0, Gr3w3e / Cr3;
%      Gr1w13 / Cw13, 0, 0, -(Gr1w13 + Gr3w13) / Cw13, 0, 0, 0, 0;
%      0, Gr2w23 / Cw23, 0, 0, -(Gr2w23 + Gr3w23) / Cw23, 0, 0, 0;
%      Gr1w1e / Cw1e, 0, 0, 0, 0, -(Gw1e + Gr1w1e) / Cw1e, 0, 0;
%      0, Gr2w2e / Cw2e, 0, 0, 0, 0, -(Gw2e + Gr2w2e) / Cw2e, 0;
%      0, 0, Gr3w3e / Cw3e, 0, 0, 0, 0, -(Gw3e + Gr3w3e) / Cw3e];
 
 %AA = [-(Gr1w13 + Gr1w1e) / Cr1,            0,                           (Gr1w13) / Cr1;
  %     0,                     -(Gr2w23 + Gr2w2e) / Cr2,                 (Gr2w23) / Cr2;
   %    (Gr1w13) / Cr3,             (Gr2w23) / Cr3,    -(Gr1w13+Gr2w23+Gr3w3e) / Cr3];
  
%Reduced A matrix to study pole placement gains   
AA = [-(Gr1w13) / Cr1,            0,                           (Gr1w13) / Cr1;
       0,                     -(Gr2w23) / Cr2,                   (Gr2w23) / Cr2;
       (Gr1w13) / Cr3,             (Gr2w23) / Cr3,      -(Gr1w13+Gr2w23) / Cr3];
   
x= eig(AA);

% B Matrix
% B = [1/Cr1, -1/Cr1, 1/Cr1, 0, 0, 0, 0, 0, 0, 0, 0;
%      0, 0, 0, 1/Cr2, -1/Cr2, 1/Cr2, 0, 0, 0, 0, 0;
%      0, 0, 0, 0, 0, 0, 1/Cr3, -1/Cr3, 1/Cr3, 0, 1/Cw3e;
%      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
%      0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
%      0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw1e/Cw1e, 0;
%      0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw2e/Cw2e, 0;
%      0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw3e/Cw3e, 0];

%Reduced B matrix to study pole placement gain
BB = [1/Cr1,         0,      0;
      0,       1/Cr2        0;
      0,         0,         1/Cr3,];


% C Matrix
C = [1, 0, 0, 0, 0, 0, 0, 0;
     0, 1, 0, 0, 0, 0, 0, 0;
     0, 0, 1, 0, 0, 0, 0, 0];

% D Matrix (Zero matrix)
D = zeros(3, 11); 

  
% Find eigenvalues (poles) of the reduced system to understand where to
% place the new ones
poles = eig(AA);

disp('Poles of the system:');
disp(poles);

% Computation of the equilibrium
% Linearization of the system
% PP design, Check Pole Placement's conditions
M_R = [BB, AA*BB, (AA^2)*BB];
rank(M_R);
n= rank(M_R);   %if full rank, then reachable

% Compute the Pole Placement gain
pp = [ -0.03, -0.01, -0.001];
Kpp = place(AA,BB,pp);

% %% State Observer Design
% M_o = obsv (A,C);
% rank(M_o) == n;
% 
% % Define obsv equation and find the obsv gain using PP approach
% % We take the obsv. poles suff, larger than PP poles (like x10)
% 
% obsv_poles = [pole 1*10, pole 2*10, pole 3*10];
% 
% %We traspose 
% L = place(A', C', obsv_poles)';

% %% Implement the observer 
% 
% A_ob = A-L*C;
% B_ob = [B - L*D, L];
% C_ob = eye(n);
% D_ob = zeros(n, m+p);




