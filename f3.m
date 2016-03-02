function res = f3(x, w, N, d)

res = zeros(N, d);

for i = 1:N
    res(i, :) = x(i,:).*x(i,:);
    %res(i, :) = temp;
end

end

