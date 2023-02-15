clear all; close all
file=fopen('unmanual.txt');
ca=fscanf(file,'%c');

%Codificacion A
 CA=1:32;

FCA=1:length(ca);

for i=1:length(ca)
    
    if (ca(i)=='A' || ca(i)=='a' || ca(i)=='á')
    FCA(i)=3;
   
    elseif (ca(i)=='B' || ca(i)=='b')
    FCA(i)=18;
    
    elseif (ca(i)=='C' || ca(i)=='c')
    FCA(i)=13;
      
    elseif (ca(i)=='D' || ca(i)=='d')
    FCA(i)=11;
   
    elseif (ca(i)=='E' || ca(i)=='e' || ca(i)=='é')
    FCA(i)=2;
   
    elseif (ca(i)=='F' || ca(i)=='f')
    FCA(i)=21;
   
    elseif (ca(i)=='G' || ca(i)=='g')
    FCA(i)=19;
    
    elseif (ca(i)=='H' || ca(i)=='h')
    FCA(i)=22;
   
    elseif (ca(i)=='I' || ca(i)=='i' || ca(i)=='í')
    FCA(i)=7;
  
    elseif (ca(i)=='J' || ca(i)=='j')
    FCA(i)=24;
    
    elseif (ca(i)=='K' || ca(i)=='k')
    FCA(i)=27;
    
    elseif (ca(i)=='L' || ca(i)=='l')
    FCA(i)=9;
   
    elseif (ca(i)=='M' || ca(i)=='m')
    FCA(i)=15;
   
    elseif (ca(i)=='N' || ca(i)=='n')
    FCA(i)=6;
   
    elseif (ca(i)=='Ñ' || ca(i)=='ñ')
    FCA(i)=25;
    
    elseif (ca(i)=='O' || ca(i)=='o' || ca(i)=='ó')
    FCA(i)=4;
    
    elseif (ca(i)=='P' || ca(i)=='p')
    FCA(i)=14;
    
    elseif (ca(i)=='Q' || ca(i)=='q')
    FCA(i)=16;
    
    elseif (ca(i)=='R' || ca(i)=='r')
    FCA(i)=8;
    
    elseif (ca(i)=='S' || ca(i)=='s')
    FCA(i)=5;
    
    elseif (ca(i)=='T' || ca(i)=='t')
    FCA(i)=12;
   
    elseif (ca(i)=='U' || ca(i)=='u' || ca(i)=='ú')
    FCA(i)=10;
    
    elseif (ca(i)=='V' || ca(i)=='v')
    FCA(i)=20;
    
    elseif (ca(i)=='W' || ca(i)=='w')
    FCA(i)=28;
    
    elseif (ca(i)=='X' || ca(i)=='x')
    FCA(i)=26;
  
    elseif (ca(i)=='Y' || ca(i)=='y')
    FCA(i)=17;
   
    elseif (ca(i)=='Z' || ca(i)=='z')
    FCA(i)=23;
    
    else
    FCA(i)=1;
    
    end
end
dec2bin(FCA)