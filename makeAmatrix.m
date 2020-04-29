% Copywright <2020> <Md Salman Nazir>
% This software is distributed under the 3-clause BSD License.

function A = makeAmatrix(Nb,a0,a1)
  A = zeros(2*Nb);
  Atemp1 = A;
  Atemp2 = A;
  Atemp1(1:Nb,1:Nb) = -eye(Nb)*a0;
  Atemp1(Nb+1:2*Nb,Nb+1:2*Nb) = eye(Nb)*a1;
  Atemp2(2:2*Nb,1:2*Nb) = -Atemp1(1:2*Nb-1,1:2*Nb);
  Atemp1(1,2*Nb)  = -a1;
  A = Atemp1+Atemp2;
end
