% Copywright <2020> <Md Salman Nazir>
% This software is distributed under the 3-clause BSD License.

function A = makeAmatrix2(Nb,a0,a1)

% Build a Markov-transition matrix from TCL parameters (cooling) (i.e. air-conditioner (AC))
% Inputs: 
% a0: rate of temperature increase due to ambient when AC is off
% a1: rate of temperature decrease due to AC on
% Nb: number of discrete bins in either on/off states. 
% Outputs:
% A: Transition matrix. Gives the aggregate TCL dynamics as: Xdot = A X (an LTI system)
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
