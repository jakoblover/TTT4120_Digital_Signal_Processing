N_x = 28;
N_h = 9;

n = 0:1:(N_x - 1);
x = 0.9.^n;
h = ones(1,N_h);
y = conv(x,h);

n=0:1:length(y) - 1;
stem(n, y)