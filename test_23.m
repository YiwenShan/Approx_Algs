clear;
lmd = 1;
y = (128/27)^(1/4)*lmd^(3/4) + 0.1; % y>(128/81)^(1/4)*lmd^(3/4)
phi = 2/sqrt(3)*(2*lmd)^(1/4)*sqrt( cosh( acosh( (27*y*y*(2*lmd)^(-1.5))/16 )/3 ) );
psi = sqrt(2*y/phi - phi*phi);
x_opt = (phi + psi)^3/8;
OPT = 0.5*(x_opt - y)^2 + lmd*x_opt^(2/3);

x = y;
len = 10;
ratio_arr = zeros(len,1);
for j=1:len
    x = y - lmd*0.5*x^(-0.5);
    ratio_arr(j,1) = (0.5*(x-y)^2 + lmd*x^(2/3))/OPT;
end

figure; plot(1:len, ratio_arr, 'o-','linewidth',1.5,'markerfacecolor','auto');
xlabel('$k$','fontsize',16,'interpreter','latex'); xlim([1,len]);
ylabel('$\frac{\frac{1}{2} (x_{k}-y)^2 + \lambda x^{\frac{2}{3}}}{OPT}$',...
    'fontsize',16,'interpreter','latex');

