clc;
close all;
data = load('integral_polar.txt');
psi = data(20:end-20,1);
psi = psi/180*pi;
int = data(20:end-20,7);
intMod = sqrt(data(20:end-20,7).^2 + data(20:end-20,10).^2);

data = load('stPhase_polar.txt');
data = data(1:2:end,:);
psiSPhase = data(:,1);
psiSPhase = psiSPhase/180*pi;
stPhase = data(:,7);
stPhaseMod = sqrt(data(:,7).^2 + data(:,10).^2);


widthmm = 70;
hightmm = 50;
textpt = 8;
multiple = 1;
widpi = (650/127)*widthmm*multiple;
higpi = (480/127)*hightmm*multiple;
textri = textpt*multiple;
set(0, 'DefaultAxesFontSize', textri, 'DefaultAxesFontName', 'Times New Roman');
set(0, 'DefaultTextFontSize', textri, 'DefaultTextFontName', 'Times New Roman');

% IMMIstyle();
hFig = figure();
set (hFig, 'Position', [200 200 widpi higpi]);

polarplot(psi, intMod, psiSPhase, stPhaseMod,'x', 'lineWidth', 1, 'markerSize', 7);
title('$\mathbf{u}_{pp} \\$', 'Interpreter', 'Latex', 'FontSize',textri);
thetalim([180 360]);
grid on;
set(hFig,'color','w');
set(gca, 'GridAlpha', 0.5);

% plot(psi, intMod, psi, stPhaseMod,'--', 'lineWidth', 3);

% legItem1 = '$|\mathbf{u}_{ss}|$ integral';
% legItem2 = '$|\mathbf{u}_{ss}|$ asymptotics';
% leg1 = legend(legItem1, legItem2);
% set(leg1, 'Interpreter', 'Latex');



% set(gcf,'color','w');

% legend('интеграл','асимптотика','Location','northwest');
% title('$\mathbf{u}_{ss}$', 'Interpreter', 'Latex', 'FontSize',textri);
% set(get(gca,'title'),'Position',[0 0])
% set(gca, 'GridAlpha', 1);

% set(findall(gcf,'type','text'), 'FontSize', 14, 'FontName', 'Times')
set(gca,'FontSize', textri, 'FontName', 'Times')