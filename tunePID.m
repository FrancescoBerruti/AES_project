clear
s=tf('s');
TauHC=1;
Tau=100;
TauZero=100;

L=1/Tau*(1+(TauZero+1)*s)/(s*(1+TauHC*s)*s);
pole(L)
margin(L/10)