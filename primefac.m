function a = primefac(x)
k  = [];
a = x
s =2;
i = 1;
while a > 1
    if a/s == round(a/s)
        k(i) = s;
        i = i + 1;
        a = a/s;
    else
        s = s + 1;
    end
end 
k
    