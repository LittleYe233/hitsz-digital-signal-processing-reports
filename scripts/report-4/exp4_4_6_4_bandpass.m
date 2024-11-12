b = [0.06 0 -0.06];
a = [1 -1.77 0.88];
fs = 20000;
f = linspace(0, fs / 2, fs);

h = freqz(b, a, fs);
h = abs(h);

figure;
grid on;
hold on;
plot(f, h);
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Amplitude Response of IIR');
hold off;

figure;
zplane(b, a);
xlabel('Real axis');
ylabel('Imaginery axis');
title('Z Plane of an Unstable IIR');