clear;
clc;
num=[260 270 280 290 300,310,320];
% optimal=[5309/7711 5705/7711 5700/7711 6121/7711 6067/7711 ]; 
optimal=[0.8581 0.8593 0.9067 0.9291 0.96696,0.9105,0.972899 ]; 
 xconf = [num num(end:-1:1)] ;%构造正反向的x值，作为置信区间的横坐标值
%  yconf = [optimal+0.02 optimal(end:-1:1)-0.02];%构造y方向的上下范围，作为置信区间的纵坐标值 ?
  yconf = [optimal optimal(end:-1:1)]+[0.01224,0.04152,0.03379,0.01898,0.00789,0.040357,0.0335569,-0.0335569,-0.040357,-0.00789,-0.01898,-0.03379,-0.04152 ,-0.01224];%构造y方向的上下范围，作为置信区间的纵坐标值 ?
  figure
  hold on
 p = fill(xconf,yconf,'red');%定义填充区间
 p.FaceColor = [0.8 0.8 0.8];%定义区间的填充颜色      
 p.EdgeColor = 'none';%定义区间边界的填充颜色，此处不设置 ?
 %p.FaceAlpha = 0.2; 
 
% gpsr=[3.4558 2.90852 2.9581 2.2274 2.39666  ].*10^-1;
 gpsr=[ 0.36851 0.39326 0.4263 0.46153 0.5002 0.5455 0.5997];
 gsr=[ 0.4325 0.4617 0.4965 0.5253 0.5573 0.5991 0.6288];

% DFR=[5.92 5.6 4.7 4.1 3.1 3.1  ]*10^-1;

% plot(num,optimal,'ro-',num,fbr,'b*-',num,VBF,'k>-',num,DFR,'g.-','linewidth',1)
 plot(num,optimal,'ro-',num,gpsr,'b*-',num,gsr,'k>-','linewidth',1)
xlabel('Signal transmission radius (m)')
ylabel('Packet delivery ratio')
grid on
legend('confidence interval','Proposed Scheme','GPSR','GSR')