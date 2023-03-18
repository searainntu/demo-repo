clear;

clc;
num=[6 8 10 12 14 16,18,20,22];


optimal=[0.67151 0.8488 0.9291 0.6359 0.60634 0.4865,0.47585,0.4662,0.466 ]; 


 xconf = [num num(end:-1:1)] ;%构造正反向的x值，作为置信区间的横坐标值
%  yconf = [optimal+0.02 optimal(end:-1:1)-0.02];%构造y方向的上下范围，作为置信区间的纵坐标值 ?
  yconf = [optimal optimal(end:-1:1)]+[0.003425,0.00483,0.01898,0.1299,0.1165,0.112,0.07,0.07,0.07,-0.07,-0.07,-0.07,  -0.112,-0.1165,-0.1299 ,-0.01898, -0.00483 ,-0.003425];%构造y方向的上下范围，作为置信区间的纵坐标值 ?
  figure
  hold on
 p = fill(xconf,yconf,'red');%定义填充区间
 p.FaceColor = [0.8 0.8 0.8];%定义区间的填充颜色      
 p.EdgeColor = 'none';%定义区间边界的填充颜色，此处不设置 ?
 %p.FaceAlpha = 0.2; 



%gpsr=[3.4558 2.90852 2.9581 2.2274 2.39666  ].*10^-1;
gpsr=[0.2368 0.3872 0.46153 0.4604 0.3324 0.273 0.28,0.281,0.281];
gsr=[0.347 0.445 0.5253 0.3443 0.129 0.1204 0.124,0.124,0.124];

% DFR=[5.92 5.6 4.7 4.1 3.1 3.1  ]*10^-1;

% plot(num,optimal,'ro-',num,fbr,'b*-',num,VBF,'k>-',num,DFR,'g.-','linewidth',1)
plot(num,optimal,'ro-',num,gpsr,'b*-',num,gsr,'k>-','linewidth',1)

xlabel('Maximum speed of vehicles (m/s)')

ylabel('Packet delivery ratio')

grid on

legend('confidence interval','Proposed Scheme','GPSR','GSR')