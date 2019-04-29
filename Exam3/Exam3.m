%%
% P1

% See recursiveFac Function File
disp(recursiveFac(7)/(recursiveFac(3) * recursiveFac(4)));

%%
% P2
clear; clc;
x = -2*pi:1/5:2*pi;
y = sin(x);
N = length(x);
for i = 1:N
    plot(x(i),y,'r*')
    axis([min(x)-1, max(x)+1, min(y)-1, min(y)+1])
    M(i) = getframe;
end

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
clear;clc;
A = {"Walden Pond", "June 13, 1997";[60 72 75], [55 57 56;54 56 55;
    52 55 53]};
cellplot(A);
A{2,2}(2,2) = 85;


%%
% P6

clear;clc;

processes = process_cost;
s = size(processes);
for ii = 1:s(2)
    cost1 = processes(ii).product1*processes(ii).hourlycost;
    fprintf('Costs %s to produce 1 unit of: %g', processes(ii).process, cost1);
    fprintf('\n');
    cost2 = processes(ii).product2*processes(ii).hourlycost;
    fprintf('Costs %s to produce 1 unit of: %g', processes(ii).process, cost2);
    fprintf('\n');
    cost3 = processes(ii).product3*processes(ii).hourlycost;
    fprintf('Costs %s to produce 1 unit of: %g', processes(ii).process, cost3);
    fprintf('\n');
end

for ii = 1:s(2)
    cost1 = 10 * processes(ii).product1*processes(ii).hourlycost;
    cost2 = 5 * processes(ii).product2*processes(ii).hourlycost;
    cost3 = 7 * processes(ii).product3*processes(ii).hourlycost;
    cost = cost1 + cost2 + cost3;
    fprintf('If we use %s, the total cost will be %6.2f', processes(ii).process, cost);
    fprintf('\n');
end

% Part c
processes = process_cost;
processes(4) = struct('process', 'Assembling', 'hr_cost', 23, 'product1', 5, 'product2', 7, 'product3', 15);
processes(5) = struct('process', 'Delivery', 'hr_cost', 19, 'product1', 8, 'product2', 20, 'product3', 7);

%%
% P7

% See p7sort.m

clear;clc;

packages(1) = struct('item_no', 123, 'cost', 19.99, 'price', 39.95, 'code', 'g');
packages(2) = struct('item_no', 456, 'cost', 5.99, 'price', 49.99, 'code', 'l');
packages(3) = struct('item_no', 587, 'cost', 11.11, 'price', 33.33, 'code', 'w');

packagesort = p7sort(packages);

packagesort(1)
packagesort(2)
packagesort(3)

