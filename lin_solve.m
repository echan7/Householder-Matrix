function x = lin_solve(A, b)
    [R,v] = householder(A);
    [Q, y] = QtimesB(v, b);
    x = R\y;
    
