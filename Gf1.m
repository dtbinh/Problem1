function res = Gf1(x, w, N, d)
           res = zeros(d, d, N, N);
           
           for i = 1:N
                for j = 1: N
                    if i~=j
                        %% dFi/dxj
                        res(:, :, i, j) =  w(i, j)*eye(d, d);
                    end
                end
               %% dFi/dxi
               res(:, :, i, i) = -w(i, i)*eye(d, d);
           end 

end

