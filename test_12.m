clear;
lmd = 1;
y = 1.51; % y>1.5*lmd^(2/3)
theta = 2*pi/3 - 2/3*acos(lmd/4 * (y/3)^(-1.5));
OPT = 1/18 * y^2*(2*cos(theta) - 1)^2 + lmd*sqrt(2/3*y*(1+cos(theta)));
x_opt = 2/3*y*(1 + cos(theta));

x = y;
len = 10;
ratio_arr = zeros(len,1);
for j=1:len
    x = y - lmd*0.5*x^(-0.5);
    ratio_arr(j,1) = (0.5*(x-y)^2 + lmd*sqrt(x))/OPT;
end

figure; plot(1:len, ratio_arr, 'o-','linewidth',1.5,'markerfacecolor','auto');
xlabel('$k$','fontsize',16,'interpreter','latex'); xlim([1,len]);
ylabel('$\frac{\frac{1}{2} (x_{k}-y)^2 + \lambda x^{\frac{1}{2}}}{OPT}$',...
    'fontsize',16,'interpreter','latex');

