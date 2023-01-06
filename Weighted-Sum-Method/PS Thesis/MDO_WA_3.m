clear;
fun= @work_rest_var_3;
x0= [200 40 3];
lb= [60 6 2]; % lower bound on variables t1 and t2
ub= [630 120 21]; % upper bound on variables t1 and t2
nonlcon=@constraints;
x_store=[]; F_store =[]; P_store =[]; exisflag_store = [];
global w
for w=0:.1:.9
    
   [x, fval,exitflag,output]=...
       fmincon(fun,x0,[],[],[],[],lb,ub,nonlcon)
   
T=1380;
nB = x(3);
F=(-0.005*(nB)^3+0.066*(nB)^2-0.318*(nB)+0.556);

P=(-0.3758*(nB)^3+5.0311*(nB)^2-17.703*(nB)+18.962);
x_store = [x_store; x];
F_store = [F_store; F];
P_store = [P_store; P];
exisflag_store = [exisflag_store; exitflag];
plot (F_store,P_store, '*b--'); hold on; pause(1);
plot (F_store,P_store, 'rs');

end

x_store
F_store
P_store
exisflag_store
hold off
