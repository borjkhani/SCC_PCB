clc
clear
close all

run Cell_IDs.m
%Cell_Number=254 ; %P3
%Cell_Number=266 ;
%Cell_Number=278 ;

global Cell_Number;
global H_C;
% global H_PV_Act_06P;
% global H_PV_Act_12P;
% global H_PV_Act_18P;
% global H_PV_Act_25P;
% global H_PV_Act_50P;
% global H_PV_Act_75P;
% global H_PV_Act_100P;
% global H_PV_DeAct;
% global H_PV_DeAct_06P;
% global H_PV_DeAct_12P;
% global H_PV_DeAct_18P;
% global H_PV_DeAct_25P;
% global H_PV_DeAct_50P;
% global H_PV_DeAct_75P;
% global H_PV_DeAct_100P;


global skipNum;


% H_C = zeros(510,1);
% H_PV_Act_06P = zeros(510,1);
% H_PV_Act_12P = zeros(510,1);
% H_PV_Act_18P = zeros(510,1);
% H_PV_Act_25P = zeros(510,1);
% H_PV_Act_50P = zeros(510,1);
% H_PV_Act_75P = zeros(510,1);
% H_PV_Act_100P = zeros(510,1);
% H_PV_DeAct = zeros(510,1);
% H_PV_DeAct_06P = zeros(510,1);
% H_PV_DeAct_12P = zeros(510,1);
% H_PV_DeAct_18P = zeros(510,1);
% H_PV_DeAct_25P = zeros(510,1);
% H_PV_DeAct_50P = zeros(510,1);
% H_PV_DeAct_75P = zeros(510,1);
% H_PV_DeAct_100P = zeros(510,1);

%Cell_Number=286 ;
%Cell_Number=311 ; % PYR L4 P2 90 degrees

% %Cell_Number=335 ;
% HWHH_C = zeros; %zeros(1,3);
% HWHH_PV_Act_06P = zeros; % zeros (1,3);
% HWHH_PV_Act_12P = zeros; % zeros (1,3);
% HWHH_PV_Act_18P = zeros; % zeros (1,3);
% HWHH_PV_Act_25P = zeros; % zeros (1,3);
% HWHH_PV_Act_50P = zeros;
% HWHH_PV_Act_75P = zeros;
% HWHH_PV_Act_100P = zeros;
% HWHH_PV_DeAct = zeros;
% HWHH_PV_DeAct_06P = zeros; % zeros (1,3);
% HWHH_PV_DeAct_12P = zeros; % zeros (1,3);
% HWHH_PV_DeAct_18P = zeros; % zeros (1,3);
% HWHH_PV_DeAct_25P = zeros; % zeros (1,3);
% HWHH_PV_DeAct_50P = zeros;
% HWHH_PV_DeAct_75P = zeros;
% HWHH_PV_DeAct_100P = zeros;

% for i = 1:12951;
%    if ~ismember(i,skipNum) % if i is not a member of the skipNum array 
%        frame = i;
%        % further work your magic
%    end
% end
% skipNum = 1;
skipNum = [86,510]; %[24,506,PV,Sst];
%
for Cell_Number = 102 %PVs %PVs %1:510 % Number of Cells to be Analysed 
    if ~ismember(Cell_Number,skipNum) % if i is not a member of the skipNum array 
       
   Cell_Number
    
%Cell_Number=jj ;

%Cell_Number=350 ; %P1
%Cell_Number=362 ;
%Cell_Number=374 ;

%Cell_Number=32 ;
%Cell_Number=57 ;  % L6
%Cell_Number=81 ;      %  interesting

run Function_Fast.m %('C:\Users\Mehdi\Downloads\Model 8\Matlab Analysis Andrzej\Run_One_PYRs_Just_PV.m')
%close all
clc


%%
X=1:0.01:17;
     %Coefficients:
if nonzeros(BB_Control)      
 %   0.9677
else 

end


if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

%% New Plots All
% FA_All=figure;
% P1=plot(F_PYRs_C); hold on;
% P2=plot(F_PYRs_PV_Act_25P); hold on;
% P3=plot(F_PYRs_PV_Act_50P); hold on;
% P4=plot(F_PYRs_PV_Act_75P); hold on;
% P5=plot(F_PYRs_PV_Act_100P); hold on;
% P6=plot(F_PYRs_PV_DeAct); hold on;
% 
% P1(1).LineWidth = 4;
% P2(1).LineWidth = 4;
% P3(1).LineWidth = 4;
% P4(1).LineWidth = 4;
% P5(1).LineWidth = 4;
% P6(1).LineWidth = 4;
% 
% P1(1).Color= [0.00,0.45,0.74]; % [0.00,0.45,0.74]
% P2(1).Color= [0.85,0.33,0.10]; %'g' %0.85,0.33,0.10
% P3(1).Color= [0.93,0.69,0.13]; %'y' %0.93,0.69,0.13
% P4(1).Color= [0.49,0.18,0.56] %'c' %0.49,0.18,0.56
% P5(1).Color= [0.47,0.67,0.19] %'m' %0.47,0.67,0.19
% P6(1).Color= [0.30,0.75,0.93] %'m' %0.47,0.67,0.19
%P7(1).Color= [0.64,0.08,0.18] %'m' %0.47,0.67,0.19

% a = get(gca,'XTickLabel');  
% set(gca,'XTickLabel',a,'fontsize',22,'FontWeight','bold')
% 
% xticks       ([ 1    400  800   1200  1600 ])
% xticklabels  ([ 0;  45;  90;   135;  180])
% 
% xlabel('Orientations ({\circ})' )
% ylabel('Norm. Firing rates (HZ)')
% box off
% axis tight;
%legend ('Control', '', 'PV_A_c_t_1_0_0_%', '', 'PV_D_e_A_c_t', '')
% legend ('Control', 'PV_A_c_t_2_5_%', 'PV_A_c_t_5_0_%', 'PV_A_c_t_7_5_%', 'PV_A_c_t_1_0_0_%', 'PV_D_e_A_c_t', '')

if find(Cell_Number==PVs)
     Ce='PV';
    elseif  find(Cell_Number==Sst)
         Ce='Sst';
            elseif  find(Cell_Number==VIP)
                Ce='VIP';
                    elseif find(Cell_Number==PYRs)
                        Ce='PYRs';
end

% title ([Ce, '  Cell ID: ', num2str(Cell_Number)])
% ylim([-0.02 1.02])
% set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5.83, 4.38], 'PaperUnits', 'Inches', 'PaperSize', [7.25, 9.125])
% 
% 
%  
% set(1,'renderer','painters')
% saveas(FA_All,sprintf('Z_%s %d All N.tif',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.fig',Ce,Cell_Number));
% saveas(FA_All,sprintf('Z_%s %d All N.eps',Ce,Cell_Number),'psc2');

end
end  
save BB_PV_Act_DeAct.mat BB_Control F_C BB_PV_Act_06P BB_PV_Act_100P BB_PV_Act_12P BB_PV_Act_18P BB_PV_Act_25P BB_PV_Act_50P BB_PV_Act_75P   BB_PV_DeAct_06P BB_PV_DeAct_100P BB_PV_DeAct_12P BB_PV_DeAct_18P BB_PV_DeAct_25P BB_PV_DeAct_50P BB_PV_DeAct_75P   
save F_PV_Act_DeAct.mat F_PV_Act_06P F_PV_Act_100P F_PV_Act_12P F_PV_Act_18P F_PV_Act_25P F_PV_Act_50P F_PV_Act_75P F_PV_DeAct_06P F_PV_DeAct_100P F_PV_DeAct_12P F_PV_DeAct_18P F_PV_DeAct_25P F_PV_DeAct_50P F_PV_DeAct_75P F_C
%save Gof_PV_Act.mat  Gof_PYRs_C  Gof_PYRs_PV_Act_06P  Gof_PYRs_PV_Act_12P  Gof_PYRs_PV_Act_18P Gof_PYRs_PV_Act_25P Gof_PYRs_PV_Act_50P Gof_PYRs_PV_Act_75P Gof_PYRs_PV_Act_100P  Gof_PYRs_PV_DeAct_06P  Gof_PYRs_PV_DeAct_12P  Gof_PYRs_PV_DeAct_18P Gof_PYRs_PV_DeAct_25P Gof_PYRs_PV_DeAct_50P Gof_PYRs_PV_DeAct_75P Gof_PYRs_PV_DeAct_100P