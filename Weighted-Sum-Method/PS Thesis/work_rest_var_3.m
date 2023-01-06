function Y=work_rest_var_3(x)

global w 
T=1380;
nB = x(3);
F=(-0.005*(nB)^3+0.066*(nB)^2-0.318*(nB)+0.556);

Fmin=0.0001;
Fmax=0.2990;
YF=(F-Fmin)/(Fmax-Fmin);

P=(-0.3758*(nB)^3+5.0311*(nB)^2-17.703*(nB)+18.962);

Pmin=0.01;
Pmax=  9.5;
YP=(P-Pmin)/(Pmax-Pmin);


Y=w*F+(1-w)*P;

end