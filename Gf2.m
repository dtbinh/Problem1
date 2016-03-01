function res = Gf2(x, w, N, d)
           res = zeros(d, d, N, N);
           
           for i = 1:N
                for j = 1: N
                    if i~=j
                        %% dFi/dxj
                        res(:, :, i, j) =  diag(w(i, j)*x(i, :));
                    end
                end
               %% dFi/dxi
               temp = zeros(1, d);
               for j = 1: N
                   if i~=j
                       temp = temp + w(i, j)*(x(j, :) - x(i, :));
                   end
               end
               res(:, :, i, i) = diag((temp - w(i, i)*x(i, :)));
           end 

end

