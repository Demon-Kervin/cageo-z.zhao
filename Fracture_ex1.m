


% Created by LI Xu
% 8 September, 2014
% Version 1.0

% Draw wind rose
% Reference:
% http://zhidao.baidu.com/link?url=TuqPU85Jiq9Ab3s0zE_QbkjyT5OIJJvUniWgSuGCkXdM_hTOv37pdZSr5H1qvj82oMhM6sO2C6uhfZciy5Xzs_



% % Wind Frequency
% fp=[0.0888632429313330;0.0763608386228121;0.0221196383919985;0.0126947489901904;0.0317368724754761;0.0367378341988844;0.0294287362954414;0.0151952298518946;0.0128870936718600;0.0280823235237546;0.168301596460858;0.120600115406809;0.0619349874975957;0.130602038853626;0.0902096557030198;0.0719369109444124;0.00230813618003462]';
function RoseWind(fp)

% Convert to 100%
fp=fp.*100;
% Wind Direction 1~16
b=fp(1:16);
% No Wind
a=fp(17);

po=b;
% Number of rings
m=5;

w= ceil(max(po)/m)/100;

% Angle to radian
dir_ang=(0:22.5:360)*pi/180;

wn=1/m;

po=po/w/100*wn;

po(17)=po(1);

px=(po).*sin(dir_ang);

py=(po).*cos(dir_ang);

ang_cyc=0:0.01:2*pi;

for i=1:17;
    
    plot([-1 -0.08]*cos(dir_ang(i)),[-1 -0.08]*sin(dir_ang(i)),'k');
    
    hold on
    
    plot([0.08 1]*cos(dir_ang(i)),[0.08 1]*sin(dir_ang(i)),'k');
    
    hold on
    
end

for i=1:m
    
    plot((i*wn)*cos(ang_cyc),(i*wn)*sin(ang_cyc),'k:')
    
    %    text((i-0.4)*wn,0.04,[num2str(i*w*100),'%']);
    
    text((i)*wn,0.04, strcat(num2str(i*w*100), '%'), 'fontsize', 13);
    
    hold on;
    
end

plot(0.08* cos(ang_cyc),0.08*sin(ang_cyc) ,'k')

hold on

plot(px,py,'-','LineWidth',2);

plot(px,py,'.','LineWidth',4);

% text(-0.04,0,[num2str(a),'%']);
Ztextsize=25;
Ntextsize=12;

text((m*wn+0.1)*sin(2/180*pi),(m*wn+0.1)*cos(0/180*pi),'N','rotation',180, 'fontsize', Ztextsize)

text((m*wn+0.1)*sin(17.5/180*pi),(m*wn+0.1)*cos(17.5/180*pi),'NNE','rotation',337, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(42/180*pi),(m*wn+0.1)*cos(42/180*pi),'NE','rotation',315, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(62.5/180*pi),(m*wn+0.1)*cos(62.5/180*pi),'ENE','rotation',292.5, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(88/180*pi),(m*wn-0.8)*cos(88/180*pi),'E','rotation',0, 'fontsize', Ztextsize)

text((m*wn+0.05)*sin(108.5/180*pi),(m*wn+0.6)*cos(108.5/180*pi),'ESE','rotation',67.5, 'fontsize', Ntextsize)

text((m*wn)*sin(132/180*pi),(m*wn+0.25)*cos(132/180*pi),'SE','rotation',45, 'fontsize', Ntextsize)

text((m*wn-0.25)*sin(152.5/180*pi),(m*wn+0.2)*cos(152.5/180*pi),'SSE','rotation',22.5, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(178/180*pi),(m*wn+0.1)*cos(178/180*pi),'S','rotation',180, 'fontsize', Ztextsize)

text((m*wn+0.9)*sin(195.5/180*pi),(m*wn+0.03)*cos(195.5/180*pi),'SSW','rotation',-22.5, 'fontsize', Ntextsize)

text((m*wn+0.3)*sin(220/180*pi),(m*wn)*cos(220/180*pi),'SW','rotation',-45, 'fontsize', Ntextsize)

text((m*wn+0.2)*sin(241.5/180*pi),(m*wn-0.3)*cos(241.5/180*pi),'WSW','rotation',-67.5, 'fontsize', Ntextsize)

text((m*wn+0.15)*sin(268/180*pi),(m*wn-0.8)*cos(268/180*pi),'W','rotation',0, 'fontsize', Ztextsize)

text((m*wn+0.1)*sin(286.5/180*pi),(m*wn+0.1)*cos(286.5/180*pi),'WNW','rotation',67.5, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(312/180*pi),(m*wn+0.1)*cos(312/180*pi),'NW','rotation',45, 'fontsize', Ntextsize)

text((m*wn+0.1)*sin(331.5/180*pi),(m*wn+0.1)*cos(331.5/180*pi),'NNW','rotation',22.5, 'fontsize', Ntextsize)

axis off
axis equal


set(gca, 'color', 'none');
set(gcf, 'color', 'none');

set(gcf, 'outerposition', get(0,'screensize'));