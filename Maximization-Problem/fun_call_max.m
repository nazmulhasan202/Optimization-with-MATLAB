fun = @fun_max_area;
x0 = [10 10];
A = []; b = []; Aeq = []; beq = [];
lb = [0 0]; 
ub = [100 100];
nonlcon = @conditions_max_area;
[x,fval,exitflag,output]= fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon)