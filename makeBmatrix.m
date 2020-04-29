
function B = makeBmatrix(Nb,unclrbin)
B = zeros(2*Nb,2*Nb);
for i=1:unclrbin
    B(i,i)=1;
    B(i,2*Nb-i+1)=1;
end
for i=Nb+1:(2*Nb-unclrbin)
    B(i,i)=1;
    B(i,2*Nb-i+1)=1;
end
% test: print B
B;
end