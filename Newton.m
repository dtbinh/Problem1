classdef Newton
   
    properties (Constant)
 
    end
    
   
    properties
        x0;             
        eps;
        trigger;
        w;
        N;
        d;
        
        h;
        
        sol;
        
        xold;
        
    end
    
    methods
        
        
        function obj = Newton(eps, w, h, N, d)
            obj.eps = eps;
            obj.w = w;
            obj.h = h;
            obj.N = N;
            obj.d = d;
            
        end
        
        function obj = Solve(obj, x0, xold)
            obj.xold = xold;
            obj.x0 = x0;
            
            x1 = x0;
            goon = true;
            obj.trigger = 1;
            while goon && obj.trigger < 100
                x0 = x1;           
                x1 = obj.Iteration(x0);
                
                goon = norm(x1-x0)>obj.eps;
                obj.trigger = obj.trigger + 1;
            end
            obj.sol = x1;
        end
        
               
        function res = Iteration(obj, xl)
            res = reVtoM((reMtoV(xl) - reMAtoM(obj.GF(xl))^(-1)*reMtoV(obj.F(xl))), obj.d);
        end
        
       
        function res = F(obj, x)
%             res = zeros(obj.N, obj.d);
%             
%             for i = 1:obj.N
%                 temp = zeros(1, obj.d);
%                 for j = 1: obj.N
%                     if i~=j
%                         temp = temp + obj.w(i, j)*(x(j, :) - x(i, :));
%                     end
%                 end
%                 res(i, :) = x(i, :) - obj.h*x(i, :).*temp - obj.xold(i, :);
%             end
            res = x - obj.h*f(x, obj.w, obj.N, obj.d) - obj.xold;
        end
        
       
        function res = GF(obj, x)
%            res = zeros(obj.d, obj.d, obj.N, obj.N);
           
%            for i = 1:obj.N
%                 for j = 1: obj.N
%                     if i~=j
%                         %% dFi/dxj
%                         res(:, :, i, j) =  -obj.w(i, j)*diag(x(i, :));
%                     end
%                 end
%                 %% dFi/dxi
%                 temp = zeros(1, obj.d);
%                 for j = 1: obj.N
%                     if i~=j
%                         temp = temp + obj.w(i, j)*(x(j, :) - x(i, :));
%                     end
%                 end
%                 res(:, :, i, i) = eye(obj.d, obj.d) - obj.h*diag((temp - obj.w(i, i)*x(i, :)));
%            end 
           
           res = - obj.h*Gf(x, obj.w, obj.N, obj.d);
           %only diagonal values are different from -h*Gf
           for i = 1:obj.N
               res(:, :, i, i) = res(:, :, i, i) + eye(obj.d, obj.d);
           end 
        end
      
    end
    
    
    
    
    
    methods (Static)
      
       
     
    end
    
end

