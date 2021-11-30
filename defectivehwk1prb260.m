function res=defectivehwk1prob260(Nprod) 
%Nprod=total number of produce
NgoodA=0; %good products by machine A
NdefectiveA=0; %defective products by machine A
for ii=1:(Nprod*0.6)%multiplied by 0.6 because machine A produces 60%
        temp=rand;
        if temp<0.02 %probability of machine A making defective product
           NdefectiveA=NdefectiveA+1;
        else 
           NgoodA=NgoodA+1;
        end
end
%repeated for machine B and machine C

NgoodB=0;
NdefectiveB=0;
for ii=1:(Nprod*0.3)
        temp=rand;
        if temp<0.03
           NdefectiveB=NdefectiveB+1;
        else 
           NgoodB=NgoodB+1;
        end
end
NgoodC=0;
NdefectiveC=0;
for ii=1:(Nprod*0.1)
        temp=rand;
        if temp<0.04
           NdefectiveC=NdefectiveC+1;
        else 
           NgoodC=NgoodC+1;
        end
end

%calculation and output, for the 1st part of the question
pr_defective_fromA=(NdefectiveA)/((NdefectiveA)+(NdefectiveB)+(NdefectiveC))
%calculation and output, for the 2nd part of the question
pr_defective_fromAorB=((NdefectiveA)+(NdefectiveB))/((NdefectiveA)+(NdefectiveB)+(NdefectiveC))