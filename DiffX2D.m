function DX=DiffX2D(u,dx)

h = [0 -0.5/dx 0;
    0 0 0;
    0 0.5/dx 0];
DX = imfilter(u, h, 'circular');
end