function  sol  = EulerMethod(x0, w, N, d, n, h)

sol = zeros(N, d, n);
sol(:, :, 1) = x0;


for k=1:n-1
    sol(:, :, k+1) = sol(:, :, k) + h*f(sol(:, :, k), w, N, d);
end


end

