function  sol  = BackEulerMethod(x0, w, N, d, n, h)

sol = zeros(N, d, n);
sol(:, :, 1) = x0;

eps = 0.001;
newton = Newton(eps, w, h, N, d);

for k=1:n-1
    %x0n = sol(:, :, k) + h*f(sol(:, :, k), w, N, d);
    x0n = sol(:, :, k);
    xold = sol(:, :, k);
    
    newton = newton.Solve(x0n, xold);
    newton.trigger
    
    sol(:, :, k+1) = newton.sol;
end


end

