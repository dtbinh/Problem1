function [t, res] = MATLABsolver(x0, w,  T, N, d)

    function dxdt = osc(t, x)
        dxdt = reMtoV(f(reVtoM(x, d), w, N, d));
    end


tspan = [0, T];

x0 = reMtoV(x0);

%[t, sol] = ode15s(@osc, tspan, x0);
[t, sol] = ode45(@osc, tspan, x0);

res = zeros(N, d, length(t));


for k = 1:length(t)
    res(:, :, k) = reVtoM(sol(k, :), d);
end


end

