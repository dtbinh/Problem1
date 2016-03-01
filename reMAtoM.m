function res = reMAtoM(A)

[d1, d2, N1, N2] = size(A);
if d1 == d2 && N1 == N2
    d = d1;
    N = N1;
else
    d = 0.01;
    N = 0.01;
end

res = zeros(N*d, N*d);

for i = 1:N;
    for j = 1:N;
        for k = 1:d
            for l = 1:d
                res((i-1)*d + k, (j-1)*d + l) = A(k, l, i, j);
            end
        end
    end
end

end

