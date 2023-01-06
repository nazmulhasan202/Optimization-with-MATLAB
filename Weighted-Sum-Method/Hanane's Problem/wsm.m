clear;
fun = @obj_wsm;
A = []; b = []; Aeq = []; beq = [];
lb = 0;
ub = 18;
x0 = 10;
nonlcon = [];

x_store = []; f1_store = []; f2_store = []; exitflag_store = [];

global w1
for w1 = 0:.05:1
    [x,fval,exitflag,output] = ...
        fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)

    f1 = -0.1323*x^2 + 3.7183*x + 24.981;
    f2 = 0.0608*x^2 - 1.5118*x + 23.605;
    
    x_store = [x_store; x];
    f1_store = [f1_store; f1];
    f2_store = [f2_store; f2];
    exitflag_store = [exitflag_store; exitflag];
    
end
w = 0:.05:1;
w = w';
T = table(w,x_store,f1_store,f2_store,exitflag_store);
T_sorted = sortrows(T,{'w'})
f1_store = T_sorted.f1_store;
f2_store = T_sorted.f2_store;
plot(f1_store,f2_store,'*--')
xlabel('F1')
ylabel('F2')

