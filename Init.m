function [x1, x2] = Init(N, r)

x1 = zeros(N, 1);
x2 = zeros(N, 1);

t = linspace(0, 2*pi, N+1);
for k=1:N
    x1(k) = r*cos(t(k));
    x2(k) = r*sin(t(k));
end

end

