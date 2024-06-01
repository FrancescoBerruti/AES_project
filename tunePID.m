clear
s=tf('s');
TauHC=1;
Tau=1;
TauZero=100;

L=1/Tau*(1+(TauZero+1)*s)/((TauZero+1)*s*(1+TauHC*s)*s);
pole(L)
margin(L/10)