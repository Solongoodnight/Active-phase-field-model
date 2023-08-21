function DY=DiffY2D(u,dy)

h = [0 0 0;
    -0.5/dy 0 0.5/dy;
    0 0 0];
DY = imfilter(u, h, 'circular');
end