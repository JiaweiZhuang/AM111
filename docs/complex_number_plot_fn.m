%% complex_number_plot.m
% plots a complex number on the complex plane
%
% INPUTS
% z: a complex number
% color: color character for plot

function [] = complex_number_plot(z,color)

scatter(real(z),imag(z),'kx'); hold on
plot([0 real(z)],[0 imag(z)],color)
xlabel('Re[z]')
ylabel('Im[z]')

axis square tight
grid on
axis([-1 1 -1 1]*1.5)

return