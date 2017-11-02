F_s = 8000;

x_a=audioread('a.wav');
x_e=audioread('e.wav');

l_a = lpc(x_a, 10);
l_e = lpc(x_e, 10);

a = filter(l_a, 1, x_a);
e = filter(1, l_e, a);

sound(x_a, F_s); %Original A
pause(1);
sound(e, F_s); %Transformed A -> E