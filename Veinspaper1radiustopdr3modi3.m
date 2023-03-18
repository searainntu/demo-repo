clear;
clc;
num=[260 270 280 290 300];
optimal=[5309/7711 5705/7711 5700/7711 6121/7711 6067/7711 ]; 
 xconf = [num num(end:-1:1)] ;%�����������xֵ����Ϊ��������ĺ�����ֵ
 yconf = [optimal+0.02 optimal(end:-1:1)-0.02];%����y��������·�Χ����Ϊ���������������ֵ ?
  figure
  hold on
 p = fill(xconf,yconf,'red');%�����������
 p.FaceColor = [0.8 0.8 0.8];%��������������ɫ      
 p.EdgeColor = 'none';%��������߽�������ɫ���˴������� ?
 %p.FaceAlpha = 0.2; 
 
% gpsr=[3.4558 2.90852 2.9581 2.2274 2.39666  ].*10^-1;
 gpsr=[2827/7711 3022/7711 3289/7711 3552/7711 3863/7711 ];
 gsr=[2773/7711 2962/7711 3188/7711 3367/7711 3585/7711];

% DFR=[5.92 5.6 4.7 4.1 3.1 3.1  ]*10^-1;

% plot(num,optimal,'ro-',num,fbr,'b*-',num,VBF,'k>-',num,DFR,'g.-','linewidth',1)
 plot(num,optimal,'ro-',num,gpsr,'b*-',num,gsr,'k>-','linewidth',1)
xlabel('Signal transmission radius (m)')
ylabel('Packet delivery ratio')
grid on
legend('Proposed Scheme','GPSR','GSR')