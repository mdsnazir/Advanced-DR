% Copywright <2020> <Md Salman Nazir>
% This software is distributed under the 3-clause BSD License.

function B = makeBmatrix(Nb,unclrbin)
% Control - B-matrix for priority- or market-based on/off switching of TCLs
% Nb: Number of bins representing TCL on/off states
% unclrbin: Bin index up to which all TCLs must turn off. Above it, all TCLs must turn on.

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
