function A = makeAmatrix2(Nb,a0,a1)
A = zeros(2*Nb);
for i = 2:Nb
    A(i,i-1) = a0;
    A(i,i) = -a0; 
end
for i = Nb+2:2*Nb
    A(i,i-1) = - a1;
    A(i,i) = a1; 
end
A(1,1) = -a0; 
A(1,2*Nb)= -a1;
A(Nb+1,Nb) = a0; 
A(Nb+1,Nb+1)= a1;
end