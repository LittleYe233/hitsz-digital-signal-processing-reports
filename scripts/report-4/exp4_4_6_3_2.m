b = [0.504 -1.008 0.504];
a = [1 -0.748 0.27];
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