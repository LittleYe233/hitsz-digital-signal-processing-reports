b = [1 0 0];
a1 = [1 -1.6 0.902];
a2 = [1 -1.7 0.902];
a3 = [1 -1.6 0.95];
a4 = [1 -1.6 1];
fs = 20000;
f = linspace(0, fs / 2, fs);

h = freqz(b, a1, fs);
h1 = abs(h);
h = freqz(b, a2, fs);
h2 = abs(h);
h = freqz(b, a3, fs);
h3 = abs(h);
h = freqz(b, a4, fs);
h4 = abs(h);

grid on;
hold on;
plot(f, h1);
plot(f, h2);
plot(f, h3);
%plot(f, h4);
legend('a = [1 -1.6 0.902]', 'a = [1 -1.7 0.902]', 'a = [1 -1.6 0.95]', 'a = [1 -1.6 1]');
xlabel('Frequency (Hz)');
ylabel('Amplitude Response');
title('Different Amplitude Response of IIR with Different A Parameter');
hold off;