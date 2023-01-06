clear;
fun = @obj_ecm;
A = []; b = []; Aeq = []; beq = [];
lb = [5,2,3];
ub = [15,5,8];
x0 = [10,3,5];
nonlcon = @cons_ecm;

x_store = []; f1_store = []; f2_store = []; exitflag_store = [];

global epsilon_f2
for epsilon_f2 = [100,160,220,280,340,400] % Enter the desired/target bound for f2. 
                                          % These target values are used as constraint in the "cons_ecm.m" file.
                                          % Multiple values have been used to generate Pareto front 
    
    [x,fval,exitflag,output] = ...
        fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)
    
    d = x(1); h = x(2); w = x(3);

    f1 = 2*(d*h + h*w) + d*w;
    
    x_store = [x_store; x];
    f1_store = [f1_store; f1];
    f2_store = [f2_store; epsilon_f2];
    exitflag_store = [exitflag_store; exitflag];
    
end
plot(f1_store,f2_store,'*--')
xlabel('Surface area, (m^2)')
ylabel('Volume, (m^3)')
x_store
f1_store
f2_store
exitflag_store
