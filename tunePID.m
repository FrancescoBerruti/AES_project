clear
s=tf('s');
Tau=1;
TauHC=1/10;
TauZero=10;

L=1/Tau*(1+TauZero*s)/(TauZero*s*(1+TauHC*s)*s);
pole(L)
margin(L)
