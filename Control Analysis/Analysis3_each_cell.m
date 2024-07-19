 %% Important code FOr loop Variables
    
%     Ori=[0 11 22 33 45 56 67 78 90 101 112 123 135 146 157 168 180] 
%     PPP=length(Ori);
%     for j=Ori;
%     BBB{PPP}=eval(['Data_' num2str(j) '_C1'])
%     end
    
    %%
    clc
    %Cell_Number=638;
    Cell_Number_C2=510; % 510

    Trial=8;
    
    All_cells_Dep=cell(Trial,Cell_Number_C2);
    All_cells_Control=cell(Trial,Cell_Number_C2);
    %
    Data_0_C2=Data_0_C2(:,:);
    Data_11_C2=Data_11_C2(:,:);
    Data_22_C2=Data_22_C2(:,:);
    Data_33_C2=Data_33_C2(:,:);
    Data_45_C2=Data_45_C2(:,:);
    Data_56_C2=Data_56_C2(:,:);
    Data_67_C2=Data_67_C2(:,:);
    Data_78_C2=Data_78_C2(:,:);
    Data_90_C2=Data_90_C2(:,:);
    Data_101_C2=Data_101_C2(:,:);
    Data_112_C2=Data_112_C2(:,:);
    Data_123_C2=Data_123_C2(:,:);
    Data_135_C2=Data_135_C2(:,:);
     Data_146_C2=Data_146_C2(:,:);
      Data_157_C2=Data_157_C2(:,:);
       Data_168_C2=Data_168_C2(:,:);
        Data_180_C2=Data_180_C2(:,:);
        

    
    for j=1:8;%Trial; 
    for i=1:Cell_Number_C2;
    %for i=1:Cell_Number;

       1
   All_cells_Dep{j,i}= [
    Data_0_C2(j,i);
    Data_11_C2(j,i);
    Data_22_C2(j,i);
    Data_33_C2(j,i);
    Data_45_C2(j,i);
    Data_56_C2(j,i);
    Data_67_C2(j,i);
    Data_78_C2(j,i);
    Data_90_C2(j,i);
    Data_101_C2(j,i);
    Data_112_C2(j,i);
    Data_123_C2(j,i);
    Data_135_C2(j,i);
    Data_146_C2(j,i);
    Data_157_C2(j,i);
    Data_168_C2(j,i);
    Data_180_C2(j,i);
    ];
    end
    end
    %%
    %All_cells_R{:,:}=All_cells{:,:}/2;
    %All_cells_Control=All_cells_Dep();
    
    All_cells_Control=All_cells_Dep; 
   
    %%
    %
    yournumber=1;
    a=All_cells_Dep;
    All_cells_Control=cellfun(@(x) x/yournumber,a,'un',0)
    % Recall tuning curve for each cell
    % plot(All_cells{2, 1}) 
    
    save All_cells_Control.mat All_cells_Control
    %%
    plot(All_cells_Dep{1, 1}); hold on;plot(All_cells_Dep{2, 1});hold on;plot(All_cells_Dep{3, 1}); hold on;plot(All_cells_Dep{4, 1})
    hold on
    plot(All_cells_Dep{1, 180}); hold on;plot(All_cells_Dep{2, 180});hold on;plot(All_cells_Dep{3, 180}); hold on;plot(All_cells_Dep{4, 180})
    hold on
    plot(All_cells_Dep{1, 382}); hold on;plot(All_cells_Dep{2, 382});hold on;plot(All_cells_Dep{3, 382}); hold on;plot(All_cells_Dep{4, 382})
    %%
%     for i=1:Cell_Number
%     All_cells_R{i,1}=All_cells{i,1}/2; % firing rate regulation
%     end
    save All_cells_Control.mat All_cells_Control
    plot(All_cells_Control{2, 1}) 
%     %%
%     clc
%     clear
%    load All_cells_Control.mat
% S1 = All_cells_Control{1,1}';
% %
% %load S_C_Dependent.mat
% % load S_C_all_Dep.mat
% % S1 = S_C2_all';
% x=1:8;
% y=S1;
% 
% N = size(S1,1);
% y = mean(S1);
% SEM = std(S1) / sqrt(N);                    % Standard Error Of The Mean
% CI95 = SEM * tinv(0.975, N-1);              % 95% Confidence Intervals
% errorbar(x, y, CI95,'LineWidth',2)
% %grid
% hold on;
% %%
% % clc
% % clear all
% % close all
% warning off
% % load S_C_Dependent.mat
% % S2 = S_C2_Layer6;
%  load All_cells_Control.mat
% S1 = All_cells_Control{1,1}';
% 
% 
% x=1:8;
% y=mean(S2);
% scatter(x,y);++
% amplitude=2;
% meana=30;
% sigmao=20;
% initialparameter=[amplitude,meana,sigmao];
% mx=@(initialparameter)fita(initialparameter,x,y);
% outputparameters=fminsearch(mx,initialparameter);
% 
% 
% 
% %save outputparameters_Dep.mat outputparameters