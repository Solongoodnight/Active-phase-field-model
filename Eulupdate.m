function fai=Eulupdate(fai0,const)

dt=const.dt;

ffai1=func_fai(fai0,const);

faiN1_try=fai0+0.5*ffai1*dt;
fai1_try=faiN1_try+0.5*ffai1*dt;

ffai2=func_fai(fai1_try,const);

fai1=faiN1_try+0.5*ffai2*dt;

fai=fai1;

end