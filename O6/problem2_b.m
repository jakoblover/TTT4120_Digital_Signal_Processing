N_x = 28;
N_h = 9;
N_y = (N_x + N_h - 1)/2;

n = 0:1:(N_x - 1);
x = 0.9.^n;
h = ones(1, N_h);

X = fft(x, N_y);
H = fft(h, N_y);
Y = X.*H;
y = ifft(Y, N_y);

n = 0:1:N_y - 1;
stem(n,y)