% Simulation
b = [1 -1.3 0.902];
a = [1 0 0];
fs = 10000;
f = linspace(0, fs / 2, fs);

[h, w] = freqz(b, a, fs);
h = abs(h);

% Reality
ff = [300, 500, 700, 900, 1100, 1300, 1725, 2150, 2575, 3000];
hh = [1.15, 1.05, 0.86, 0.65, 0.37, 0.17, 0.79, 1.71, 2.73, 3.71] / 2;  % The compared voltage is 2V

grid on;
hold on;
plot(f, h);
plot(ff, hh);
scatter(ff, hh);
legend('Simulation', 'Reality');
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Simulated and Real Amplitude Response from Notch Filter');
hold off;