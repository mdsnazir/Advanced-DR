% Copywright <2020> <Md Salman Nazir>
% This software is distributed under the 3-clause BSD License.

function [B] = makeBmatrix3(Nbins,Nbdn,Nbup)

Nb = Nbins; % number of bins
% Nbdn = 2; 
% Nbup = 3;

B = zeros(2*Nb,2*Nb);


for i=1:Nbdn-1
    B(i,i)= 1;
    B(i,2*Nb-i+1)=1;
end

for i= Nbup+1: Nb
    B(2*Nb-i+1,i)=1;
    B(2*Nb-i+1,2*Nb-i+1)=1;
end

for i= Nbdn:Nbup
    B(i,i)=1;
    B(2*Nb-i+1,2*Nb-i+1)=1;
end
    
% test: print B
B
% sum(B) %all elements of the row must be = 1.
%end
