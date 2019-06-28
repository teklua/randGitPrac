function a  = Lprime(x)
k = 2;
while x > 2 && k < x
    if x/k == round(x/k)
        x = x-1;
    else
        k = k + 1;
    end
end
format long
x