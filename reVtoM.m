function res = reVtoM(p, d)

n = length(p)/d;

res = zeros(n, d);
for i=1:n
    for j=1:d
        res(i, j) = p((i-1)*d+j);
    end
end

end

