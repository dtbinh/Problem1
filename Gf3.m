function res = Gf3(x, w, N, d)
           res = zeros(d, d, N, N);
           
           for i = 1:N
               %% dFi/dxi
               res(:, :, i, i) = diag(2*x(i, :));
           end 

end

