%%%%%%% DTFT %%%%%%%
N_x = 28;
f = 0:1/100000:1;
x_f = (1 - (0.9*exp(-j*2*pi*f)).^N_x) ./ (1 - 0.9*exp(-j*2*pi*f));


%%%%%%% DFT %%%%%%%
n = 0:(N_x-1);
x = 0.9.^n;

N_1 = N_x/4; 
N_2 = N_x/2; 
N_3 = N_x; 
N_4 = 2*N_x;

k_1 = 0:N_1-1;
k_2 = 0:N_2-1;
k_3 = 0:N_3-1;
k_4 = 0:N_4-1;

x_f1 = fft(x,N_1); 
x_f2 = fft(x,N_2);
x_f3 = fft(x,N_3);
x_f4 = fft(x,N_4);

f1 = k_1./(N_1-1);
f2 = k_2./(N_2-1);
f3 = k_3./(N_3-1);
f4 = k_4./(N_4-1);


%%%%%%% Plot %%%%%%%

subplot(2,2,1);
hold on;
plot(f, abs(x_f));
stem(f1,abs(x_f1));

subplot(2,2,2);
hold on;
plot(f, abs(x_f));
stem(f2,abs(x_f2));

subplot(2,2,3);
hold on;
plot(f, abs(x_f));
stem(f3,abs(x_f3));

subplot(2,2,4);
hold on;
plot(f, abs(x_f));
stem(f4,abs(x_f4))


