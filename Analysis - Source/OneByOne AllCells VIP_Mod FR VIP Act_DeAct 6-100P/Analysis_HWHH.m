clc;
clear;

%load('HWHH_PV_Act_DeAct.mat')
load('HWHH_VIP_Act.mat')
run Cell_IDs.m
%%
% N=PYRs
% H_C(N,1)
% H_PV_Act_100P(N,1)
% H_PV_DeAct_100P(N,1)

%%
clc
N=VIP;

H_C(H_C>30)=0;
H_VIP_Act_100P(H_VIP_Act_100P>30)=0;
H_VIP_DeAct_100P(H_VIP_DeAct_100P>30)=0;

M_C=mean(H_C(N,1))
SEM_C=std(H_C(N,1))


M_Act=mean(H_VIP_Act_100P(N,1))
SEM_Act=std(H_VIP_Act_100P(N,1))

M_Act=mean(H_VIP_DeAct_100P(N,1))
SEM_Act=std(H_VIP_DeAct_100P(N,1))
%%
