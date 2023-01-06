lb = [eps eps eps]; 
ub = [60 60 60];
initail_values = [2 4 6]
[f_sol,fval,exitflag,output] = fmincon(@aboltabol,initail_values,[],[],[],[],lb,ub,@conditions)