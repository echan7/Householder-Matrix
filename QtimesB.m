function [Q, y] = QtimesB(v, b)
NumberOfReflections = length(v);
y=b;
mv = length(v{1});
Q = eye(mv);
for k = 1:NumberOfReflections,
    F = eye(mv -k +1)-2*(v{k}*v{k}')/norm(v{k})^2;
    Qk = [eye(k-1) zeros(k-1, mv-k+1); zeros(mv-k+1, k-1) F];
    y = Qk*y;
end