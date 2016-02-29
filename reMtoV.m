function res = reMtoV(p)

[n, d] = size(p);

res = zeros(n*d, 1);
for i=1:n
    for j=1:d
        res((i-1)*d+j) = p(i,j);
    end
end

end

