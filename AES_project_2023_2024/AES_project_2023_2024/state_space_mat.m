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

% A Matrix
A = [-(Gr1w13 + Gr1w1e) / Cr1, 0, 0, Gr1w13 / Cr1, 0, Gr1w1e / Cr1, 0, 0;
     0, -(Gr2w23 + Gr2w2e) / Cr2, 0, 0, Gr2w23 / Cr2, 0, Gr2w2e / Cr2, 0;
     0, 0, -Gr3w3e / Cr3, Gr3w13 / Cr3, Gr3w23 / Cr3, 0, 0, Gr3w3e / Cr3;
     Gr1w13 / Cw13, 0, 0, -(Gr1w13 + Gr3w13) / Cw13, 0, 0, 0, 0;
     0, Gr2w23 / Cw23, 0, 0, -(Gr2w23 + Gr3w23) / Cw23, 0, 0, 0;
     Gr1w1e / Cw1e, 0, 0, 0, 0, -(Gw1e + Gr1w1e) / Cw1e, 0, 0;
     0, Gr2w2e / Cw2e, 0, 0, 0, 0, -(Gw2e + Gr2w2e) / Cw2e, 0;
     0, 0, Gr3w3e / Cw3e, 0, 0, 0, 0, -(Gw3e + Gr3w3e) / Cw3e];

% B Matrix
B = [1/Cr1, -1/Cr1, 1/Cr1, 0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 1/Cr2, -1/Cr2, 1/Cr2, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 1/Cr3, -1/Cr3, 1/Cr3, 0, 1/Cw3e;
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
     0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw1e/Cw1e, 0;
     0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw2e/Cw2e, 0;
     0, 0, 0, 0, 0, 0, 0, 0, 0, -Gw3e/Cw3e, 0];

% C Matrix
C = [1, 0, 0, 0, 0, 0, 0, 0;
     0, 1, 0, 0, 0, 0, 0, 0;
     0, 0, 1, 0, 0, 0, 0, 0];

% D Matrix (Zero matrix)
D = zeros(3, 11); 
