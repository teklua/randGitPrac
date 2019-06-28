function i = fibonacci(x)
i  = zeros(1,x);
i(1) = 1;
i(2) = 2;
for k = 3:x
    i(k) = i(k-1) + i(k-2);
end