clear
clc
load('All_cells_Control.mat')

xx=1:9;
%xxX=1:0.3:9;
xxX=1:0.1:9;

 
for i=1:510; %510 %Number of Cells
    for j=1:8 % Trials
S(:,j,i)=All_cells_Control{j, i};
vqX = interp1(S(:,j,i),xxX);
vq=S(:,j,i)';
f = fit(xxX.',vqX.','gauss1');
HWHH(i,j)= sqrt(log(2)) * f.c1;
HWHH(HWHH>2)=NaN;

end
end
%HWHH= sqrt(log(2)) * f.c1
%%
 figure
plot(f,xxX,vqX)
%%
boxplot(HWHH'*11.25)
%
save('HWHH_data','HWHH')
%%
%load HWHH.mat

M=mean (11.25*HWHH');
M = M(~isnan(M))';
Avg=mean(M)
%%
 HWHH=HWHH(~isnan(HWHH))
% 
 mean(HWHH)
