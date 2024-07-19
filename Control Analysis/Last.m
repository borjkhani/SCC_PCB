 H_C_PYRs 

 H_C_PVs
  
 H_C_Sst
 
 H_C_VIP
 %%
 
 Thr = 45;
 
  H_C_PYRs(H_C_PYRs > Thr) = 0;

  H_C_PVs(H_C_PVs > Thr) = 0;
  
  H_C_Sst(H_C_Sst > Thr) = 0;
  
  H_C_VIP(H_C_VIP > Thr) = 0;
  
  
H_C_PYRs=nonzeros(H_C_PYRs);
H_C_PVs=nonzeros(H_C_PVs); 
H_C_Sst=nonzeros(H_C_Sst);
H_C_VIP=nonzeros(H_C_VIP);
% %  H_C_PVs
% %   
% %  H_C_Sst
% %  
% %  H_C_VIP
 %%
 
T1_N=length(H_C_PYRs)
T2_N=length(H_C_PVs)
T3_N=length(H_C_Sst)
T4_N=length(H_C_VIP)
 
H_N=[H_C_PYRs' H_C_PVs' H_C_Sst' H_C_VIP'];
T=[zeros(1,T1_N),ones(1,T2_N),2*ones(1,T3_N),3*ones(1,T4_N)];
%%

boxplot(H_N,T)
