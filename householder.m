function [R,v] = householder(A)
[m, n] = size(A);
if m>=n,
    NumberOfReflections = n; 
else 
    NumberOfReflections = m -1;
end 
R = A;
v = cell(NumberOfReflections, 1);
for k = 1:NumberOfReflections
    x = R(k:m, k);
    xNorm = norm(x);
    if xNorm >0
        v{k} = -x;
        v{k}(1) = v{k}(1) - sign(x(1))*xNorm;
        v{k} = (sqrt(2)/norm(v{k}))*v{k};
        
        for j = k:NumberOfReflections,
            R(k:m,j) = R(k:m,j) - (v{k}'*R(k:m,j))*v{k};
        end
    else
        v{k} = zeroes(m-k+1,1);
    end
end 

