function res = f2(x, w, N, d)

res = zeros(N, d);

for i = 1:N
    temp = zeros(1, d);
    for j = 1:N
        if(i~=j)
            temp = temp + w(i, j)*(x(j,:) - x(i,:));% + u(i,:);
        end
    end
    res(i, :) = x(i,:).*temp;
    %res(i, :) = temp;
end

end

