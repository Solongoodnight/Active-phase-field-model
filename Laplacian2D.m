    function del2u = Laplacian2D(u, dx, dy)
        %     1. Calculate the discrete Laplacian in 2D space, with perioidic
        %   boundary conditions.
        %     2. x-axis is along the column direction, and y-axis is along the row
        %   direction.
        %     3. Second-order accuracy.
        % 
        
        h = [0 1/dx^2 0;
            1/dy^2 -2*(1/dx^2+1/dy^2) 1/dy^2;
            0 1/dx^2 0];
        
        del2u = imfilter(u, h, 'circular');
        
    end