clear;

clc;
num=[260 270 280 290 300,310,320];


optimal=[   0.05615 0.05615 0.05612 0.05646 0.05742     0.0607     0.055969]; 

 xconf = [num num(end:-1:1)] ;%构造正反向的x值，作为置信区间的横坐标值
%  yconf = [optimal+0.02 optimal(end:-1:1)-0.02];%构造y方向的上下范围，作为置信区间的纵坐标值 ?
yconf = [optimal optimal(end:-1:1)]+[1.02951e-4,1.02951e-4, 6.9466e-5, 3.883e-4,2.9767e-3,5.38695e-3,2.0359e-3,-2.0359e-3 ,-5.38695e-3, -2.9767e-3,  -3.883e-4 ,-6.9466e-5 ,-1.02951e-4 ,-1.02951e-4];
  figure
  hold on
 p = fill(xconf,yconf,'red');%定义填充区间
 p.FaceColor = [0.8 0.8 0.8];%定义区间的填充颜色      
 p.EdgeColor = 'none';%定义区间边界的填充颜色，此处不设置 ?


%gpsr=[3.4558 2.90852 2.9581 2.2274 2.39666  ].*10^-1;
gpsr=[ 0.08265 0.09285 0.070899 0.05783 0.061587,0.088,0.09631 ];
gsr=[ 0.06769 0.063 0.07573 0.06576 0.06684,0.1181,0.0918];

% DFR=[5.92 5.6 4.7 4.1 3.1 3.1  ]*10^-1;

% plot(num,optimal,'ro-',num,fbr,'b*-',num,VBF,'k>-',num,DFR,'g.-','linewidth',1)
plot(num,optimal,'ro-',num,gpsr,'b*-',num,gsr,'k>-','linewidth',1)

xlabel('Signal transmission radius (m)')

ylabel('Average end-to-end delay (ms)')

grid on

legend('confidence interval','Proposed Scheme','GPSR','GSR')