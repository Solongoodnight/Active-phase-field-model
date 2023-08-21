function ffai=func_fai(fai,const)

dx=const.dx;
dy=const.dy;
A=const.A;
K=const.K;
lamda=const.lamda;
M=const.M;

dxfai=DiffX2D(fai,dx);
dyfai=DiffY2D(fai,dy);
Lafai=Laplacian2D(fai,dx,dy);

miu=A*(-fai+fai.^3)-K*Lafai+lamda*(dxfai.^2+dyfai.^2);

ffai=M*Laplacian2D(miu,dx,dy);


end