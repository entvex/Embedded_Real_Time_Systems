load ('eq_impulse.dat');
h = eq_impulse(:,3);
h = h/max(h);
plot(h);
figure,
freqz(h);
