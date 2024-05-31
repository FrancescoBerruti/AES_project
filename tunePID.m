TauHC=1;
Tau=100;
TauZero=100;

L=(1+(TauZero+1)*TauHC*s)/(Tau*TauHC*s*(1+TauHC*s)*s);
bode(L)
