%%
% P1

% See recursiveFac Function File
disp(recursiveFac(7)/(recursiveFac(3) * recursiveFac(4)));

%%
% P2
clear; clc;
x = -2*pi: 1/5: 2*pi;
y = sin(x);
N = length(x);
for i = 1:N
    plot(x(i),y,'r*')
    axis([min(x)-1 max(x)+1 min(y)-1 min(y)+1])
    M(i) = getframe;
    movie(M)
end
M(i) = getframe;
    
movie(M)

%%
% P3

circuitFunction();

%%
% P4

myString = "Jack and Jill went up the hill To fetch a pail of water. Jack fell down and broke his crown, And Jill came tumbling after.Up Jack got, and home he trot, As fast as he could caper, He went to bed to mend his head, With vinegar and brown paper.";

just_jill(myString)


%%
% P5





