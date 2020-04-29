% Copywright <2020> <Md Salman Nazir>
% This software is distributed under the 3-clause BSD License.

function [B] = makeBmatrix2(Nbins,dir,frac)

%unclrbin = ceil(Nb/2); %upper boundary of unclearing bin i (lower boundary of bin (i+1) :all bins above upper boundary of 'unclrbin' are cleared
Nb = Nbins; % number of bins
B = zeros(2*Nb,2*Nb);

if dir ==1 % increase power : up. off to on.
for i=1:Nb
    B(i,i)= 1- frac; %1- (i/Nb*frac);  %1- frac;  1- ((Nb-i)/Nb*frac);
end
for i=Nb+1:2*Nb
    B(i,i)=1;
    B(i,2*Nb-i+1)= frac; % (2*Nb-i+1)/Nb*frac;   % frac;   1-B(2*Nb-i+1,2*Nb-i+1);
end
elseif dir ==2
for i=1:Nb
    B(i,i)= 1;
    B(i,2*Nb-i+1)= frac;
end
for i=Nb+1:2*Nb
    B(i,i)=1-frac;
end    
    
% test: print B
B;
% sum(B) %all elements of the row must be = 1.
end
