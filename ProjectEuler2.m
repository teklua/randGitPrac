s = 0
for x = fibonacci(400)
    if x/2 == round(x/2) && x < 4000000
        s = s+x
    end
end