clear;
y = -0.5:0.05:0.5;
lmd = 0.2;
x = sign(y).*max(0, abs(y)-lmd);

figure; plot(y,x,'-','linewidth',1.5); axis('equal');
xlabel('$y$','interpreter','latex');
ylabel('$sgn(y)\cdot \max(0,|y|-0.2)$','interpreter','latex');
set(gca, 'xtick',[-0.5:0.1:0.5]);
h_a = gca;
box off;% 关闭坐标盒子
% 将坐标轴移到原点处
set(h_a, 'XAxisLocation', 'origin');
set(h_a, 'YAxisLocation', 'origin');
% 设置坐标轴的颜色
set(h_a, 'Xcolor', 'k');
set(h_a, 'Ycolor', 'k');
