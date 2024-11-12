b = [1 0 0];
a = [1 -1.6 0.902];
fs = 20000;
f = linspace(0, fs / 2, fs);

[h, w] = freqz(b, a, fs);
h = abs(h);

ff = [300, 670, 1040, 1410, 1780, 2150, 2520, 2890, 3260, 3630, 4000];
hh = [1.73, 1.92, 2.52, 3.81, 7.29, 3.55, 1.81, 1.17, 0.81, 0.60, 0.50] / 0.5;

grid on;
hold on;
plot(f, h);
plot(ff, hh);
plot([0, fs / 2], [h(1) * 0.707, h(1) * 0.707])
scatter(ff, hh);
legend('Simulation', 'Reality');
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Simulated and Real Amplitude Response from IIR');
hold off;