

pc = (1-aa-cc)/2 + (((1-aa-cc)^2 + 4*cc)^0.5)/2;
vc = pc;
Jack(pc,vc,0.531818,2,0.1)

[l,ll]=Eigenvalues(pc,vc,aa,bb,cc)
[l,ll]=Eigenvalues(1,0,aa,bb,cc)
