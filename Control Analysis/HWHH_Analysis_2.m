clear
clc

 load('HWHH_data.mat')
 Steps=11.25;
 
 HWHH(isnan(HWHH))=mean(mean(~isnan(HWHH)));
 HWHH=HWHH*Steps;
 plot(HWHH)
 %%
 figure;
M1=mean(HWHH);
 M=mean(mean(HWHH));
 
 x=1;
 bar(M1)
 hold on;
 
x=1:8
y = mean(HWHH)
N = size(HWHH,1)
SEM = std(HWHH) / sqrt(N);
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y, CI95,'LineWidth',3)
grid off
hold on;
%%
  
 figure;
 M1=mean(HWHH);
 M=mean(mean(HWHH));
 x=1;
 bar(M)
 hold on;
%

x=1:1
y=mean(HWHH)
y1 = mean(mean(HWHH))
%
N = 8;%size(y,1)
SEM = std(y) / sqrt(N);
CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
errorbar(x, y1, CI95,'LineWidth',3)
grid off
hold on;
%%

