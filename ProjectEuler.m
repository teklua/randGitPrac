s = 0;

for x = 1:1:999
   
    if x/3 == round(x/3) && x/5 == round(x/5)
    
        s = s + x;
    
    end
    
end
s
