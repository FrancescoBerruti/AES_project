TauHC=1;
Tau=120;
TauZero=100;

L=(1+TauZero*TauHC*s)/(Tau*TauHC*s*(1+s)*s);
figure
bode(L)
