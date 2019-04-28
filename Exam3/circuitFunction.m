function circuitFunction()
%CIRCUITFUNCTION Plots our circuit results through 1,000 simulations

figure();
title("Cutoff Frequencies over 1000 Simulations");
xlabel("Resistance");
ylabel("Frequency");
hold on
values = zeros(1, 1000);
for i = 1:1001
    r = -5 + (5+5)*rand(1);
    Resistance = 1000 + 0.01*r*1000;
    r2 = -10 + (10 + 10)*rand(1);
    C = 0.000001 + 0.01*r2*0.000001;
    denom = 2 * pi * Resistance * C;
    frequency = 1 / denom;
    values(i) = frequency;
    plot(Resistance, frequency, 'o');
end
hold off
figure();
histogram(values);
end

