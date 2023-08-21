clear

load('data.mat')

fai=fai_evol(:,:,end);

step = 100000;
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