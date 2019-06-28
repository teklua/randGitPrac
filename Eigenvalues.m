function [l,ll] = Eigenvalues(pp,vv,A,B,C)

% l = ((A^2*pp^6 - 4*A*B*C*pp^4*vv + 10*A*B*C*pp^3*vv^2 + 2*A*B*pp^4*vv^2 + B^2*C^2*vv^4 + 2*B^2*C*pp*vv^4 + B^2*pp^2*vv^4 - 8*B*C^2*pp^5 + 16*B*C^2*pp^4*vv + 4*B*C^2*pp^4 - 8*B*C^2*pp^3*vv - 16*B*C*pp^6 + 32*B*C*pp^5*vv + 8*B*C*pp^5 - 16*B*C*pp^4*vv - 8*B*pp^7 + 16*B*pp^6*vv + 4*B*pp^6 - 8*B*pp^5*vv)^(1/2) - A*pp^3 + B*C*vv^2 + B*pp*vv^2)/(2*(pp^3 + C*pp^2))
% ll =  -(A*pp^3 + (A^2*pp^6 - 4*A*B*C*pp^4*vv + 10*A*B*C*pp^3*vv^2 + 2*A*B*pp^4*vv^2 + B^2*C^2*vv^4 + 2*B^2*C*pp*vv^4 + B^2*pp^2*vv^4 - 8*B*C^2*pp^5 + 16*B*C^2*pp^4*vv + 4*B*C^2*pp^4 - 8*B*C^2*pp^3*vv - 16*B*C*pp^6 + 32*B*C*pp^5*vv + 8*B*C*pp^5 - 16*B*C*pp^4*vv - 8*B*pp^7 + 16*B*pp^6*vv + 4*B*pp^6 - 8*B*pp^5*vv)^(1/2) - B*C*vv^2 - B*pp*vv^2)/(2*(pp^3 + C*pp^2))

 l=((A^2*C^2*pp^2*vv^2 + 2*A*B*C^3*pp^2*vv - 8*A*B*C^3*pp*vv^2 + 4*A*B*C^2*pp^3*vv - 20*A*B*C^2*pp^2*vv^2 + 2*A*B*C*pp^4*vv - 16*A*B*C*pp^3*vv^2 - 4*A*B*pp^4*vv^2 + 4*A*C^3*pp^3*vv - 2*A*C^3*pp^2*vv + 8*A*C^2*pp^4*vv - 4*A*C^2*pp^3*vv + 4*A*C*pp^5*vv - 2*A*C*pp^4*vv + B^2*C^4*pp^2 - 4*B^2*C^4*pp*vv + 4*B^2*C^4*vv^2 + 4*B^2*C^3*pp^3 - 16*B^2*C^3*pp^2*vv + 16*B^2*C^3*pp*vv^2 + 6*B^2*C^2*pp^4 - 24*B^2*C^2*pp^3*vv + 24*B^2*C^2*pp^2*vv^2 + 4*B^2*C*pp^5 - 16*B^2*C*pp^4*vv + 16*B^2*C*pp^3*vv^2 + B^2*pp^6 - 4*B^2*pp^5*vv + 4*B^2*pp^4*vv^2 + 4*B*C^4*pp^3 - 8*B*C^4*pp^2*vv - 2*B*C^4*pp^2 + 4*B*C^4*pp*vv + 16*B*C^3*pp^4 - 32*B*C^3*pp^3*vv - 8*B*C^3*pp^3 + 16*B*C^3*pp^2*vv + 24*B*C^2*pp^5 - 48*B*C^2*pp^4*vv - 12*B*C^2*pp^4 + 24*B*C^2*pp^3*vv + 16*B*C*pp^6 - 32*B*C*pp^5*vv - 8*B*C*pp^5 + 16*B*C*pp^4*vv + 4*B*pp^7 - 8*B*pp^6*vv - 2*B*pp^6 + 4*B*pp^5*vv + 4*C^4*pp^4 - 4*C^4*pp^3 + C^4*pp^2 + 16*C^3*pp^5 - 16*C^3*pp^4 + 4*C^3*pp^3 + 24*C^2*pp^6 - 24*C^2*pp^5 + 6*C^2*pp^4 + 16*C*pp^7 - 16*C*pp^6 + 4*C*pp^5 + 4*pp^8 - 4*pp^7 + pp^6)^(1/2) + B*pp^3 + 2*C*pp^2 + C^2*pp - 4*C*pp^3 + pp^3 - 2*pp^4 - 2*C^2*pp^2 + 2*B*C*pp^2 + B*C^2*pp - 2*B*C^2*vv - 2*B*pp^2*vv - A*C*pp*vv - 4*B*C*pp*vv)/(2*(C^2*pp + 2*C*pp^2 + pp^3));
 ll=-((A^2*C^2*pp^2*vv^2 + 2*A*B*C^3*pp^2*vv - 8*A*B*C^3*pp*vv^2 + 4*A*B*C^2*pp^3*vv - 20*A*B*C^2*pp^2*vv^2 + 2*A*B*C*pp^4*vv - 16*A*B*C*pp^3*vv^2 - 4*A*B*pp^4*vv^2 + 4*A*C^3*pp^3*vv - 2*A*C^3*pp^2*vv + 8*A*C^2*pp^4*vv - 4*A*C^2*pp^3*vv + 4*A*C*pp^5*vv - 2*A*C*pp^4*vv + B^2*C^4*pp^2 - 4*B^2*C^4*pp*vv + 4*B^2*C^4*vv^2 + 4*B^2*C^3*pp^3 - 16*B^2*C^3*pp^2*vv + 16*B^2*C^3*pp*vv^2 + 6*B^2*C^2*pp^4 - 24*B^2*C^2*pp^3*vv + 24*B^2*C^2*pp^2*vv^2 + 4*B^2*C*pp^5 - 16*B^2*C*pp^4*vv + 16*B^2*C*pp^3*vv^2 + B^2*pp^6 - 4*B^2*pp^5*vv + 4*B^2*pp^4*vv^2 + 4*B*C^4*pp^3 - 8*B*C^4*pp^2*vv - 2*B*C^4*pp^2 + 4*B*C^4*pp*vv + 16*B*C^3*pp^4 - 32*B*C^3*pp^3*vv - 8*B*C^3*pp^3 + 16*B*C^3*pp^2*vv + 24*B*C^2*pp^5 - 48*B*C^2*pp^4*vv - 12*B*C^2*pp^4 + 24*B*C^2*pp^3*vv + 16*B*C*pp^6 - 32*B*C*pp^5*vv - 8*B*C*pp^5 + 16*B*C*pp^4*vv + 4*B*pp^7 - 8*B*pp^6*vv - 2*B*pp^6 + 4*B*pp^5*vv + 4*C^4*pp^4 - 4*C^4*pp^3 + C^4*pp^2 + 16*C^3*pp^5 - 16*C^3*pp^4 + 4*C^3*pp^3 + 24*C^2*pp^6 - 24*C^2*pp^5 + 6*C^2*pp^4 + 16*C*pp^7 - 16*C*pp^6 + 4*C*pp^5 + 4*pp^8 - 4*pp^7 + pp^6)^(1/2) - B*pp^3 - 2*C*pp^2 - C^2*pp + 4*C*pp^3 - pp^3 + 2*pp^4 + 2*C^2*pp^2 - 2*B*C*pp^2 - B*C^2*pp + 2*B*C^2*vv + 2*B*pp^2*vv + A*C*pp*vv + 4*B*C*pp*vv)/(2*(C^2*pp + 2*C*pp^2 + pp^3));
 