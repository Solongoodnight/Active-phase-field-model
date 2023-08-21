clear

const.Nx=200;
const.Ny=50;
const.dx = 0.5;
const.dy = 0.5;
const.dt = 0.002;
const.A = 1;
const.K = 0.6;
const.lamda=-1.4;
const.M=1;

const.ex=[0,1,0,-1,0,1,-1,-1,1];
const.ey=[0,0,1,0,-1,1,1,-1,-1];
const.w=[4/9 1/9 1/9 1/9 1/9 1/36 1/36 1/36 1/36];

d=8;
fai= -1*ones(const.Nx,const.Ny);
fai(:,const.Ny/2-d/2:const.Ny/2+d/2)=1;
fai=fai+random('normal', 0, 0.1, const.Nx,const.Ny);

step = 500000;
Ns = 100;

fai_evol = zeros(const.Nx, const.Ny, floor(step / Ns) + 1);

fai_evol(:, :, 1) = fai;

save_k=1;
for ii=1:step
    
     fai=Eulupdate(fai,const);
    
     if(mod(ii, Ns) == 0)
        fai_evol(:, :, save_k + 1) = fai;
        save_k = save_k + 1;
        save_k
     end

end

save('data.mat','fai_evol','const')
