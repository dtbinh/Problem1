function [x1, x2] = Init(N, r)

x1 = zeros(N, 1);
x2 = zeros(N, 1);

t = linspace(0, 2*pi, N+1);
for k=1:N
    x1(k) = 2*r + r*cos(t(k)-2*r);
    x2(k) = 2*r + r*sin(t(k)-2*r);
end

%plot the circle
tt = linspace(0, 2*pi);
for k=1:length(tt)
    xx1(k) = 2*r + r*cos(tt(k)-2*r);
    xx2(k) = 2*r + r*sin(tt(k)-2*r);
end
plot(xx1, xx2);
hold all

end

