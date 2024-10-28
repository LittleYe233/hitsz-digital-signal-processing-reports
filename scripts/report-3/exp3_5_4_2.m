% You should export the coefficients b from the fdatool first!

b
a = 1;
fs = 48000;
f = linspace(0, fs / 2, fs);

[h, w] = freqz(b, a, fs);
h = abs(h);

grid on;
hold on;
plot(f, h);
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Simulated Amplitude Response from Low Pass Filter');
hold off;