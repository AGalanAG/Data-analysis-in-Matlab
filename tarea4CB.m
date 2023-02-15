clear all; close all
file=fopen('unmanual.txt');
ca=fscanf(file,'%c');


%Codificacion B
 CB=[0,10,110,1110,11110,111110,1111110,11111110,111111110,1111111110,11111111110,111111111110,1111111111110,11111111111110,...
    111111111111110,1111111111111110,11111111111111110,111111111111111110,1111111111111111110,11111111111111111110,...
    111111111111111111110,1111111111111111111110,11111111111111111111110,111111111111111111111110,1111111111111111111111110,...
    11111111111111111111111110,111111111111111111111111110,1111111111111111111111111110];

FCA=1:length(ca);

for i=1:length(ca)
    
    if (ca(i)=='A' || ca(i)=='a' || ca(i)=='á')
    FCA(i)=CB(3);
   
    elseif (ca(i)=='B' || ca(i)=='b')
    FCA(i)=CB(18);
    
    elseif (ca(i)=='C' || ca(i)=='c')
    FCA(i)=CB(13);
      
    elseif (ca(i)=='D' || ca(i)=='d')
    FCA(i)=CB(11);
   
    elseif (ca(i)=='E' || ca(i)=='e' || ca(i)=='é')
    FCA(i)=CB(2);
   
    elseif (ca(i)=='F' || ca(i)=='f')
    FCA(i)=CB(21);
   
    elseif (ca(i)=='G' || ca(i)=='g')
    FCA(i)=CB(19);
    
    elseif (ca(i)=='H' || ca(i)=='h')
    FCA(i)=CB(22);
   
    elseif (ca(i)=='I' || ca(i)=='i' || ca(i)=='í')
    FCA(i)=CB(7);
  
    elseif (ca(i)=='J' || ca(i)=='j')
    FCA(i)=CB(24);
    
    elseif (ca(i)=='K' || ca(i)=='k')
    FCA(i)=CB(27);
    
    elseif (ca(i)=='L' || ca(i)=='l')
    FCA(i)=CB(9);
   
    elseif (ca(i)=='M' || ca(i)=='m')
    FCA(i)=CB(15);
   
    elseif (ca(i)=='N' || ca(i)=='n')
    FCA(i)=CB(6);
   
    elseif (ca(i)=='Ñ' || ca(i)=='ñ')
    FCA(i)=CB(25);
    
    elseif (ca(i)=='O' || ca(i)=='o' || ca(i)=='ó')
    FCA(i)=CB(4);
    
    elseif (ca(i)=='P' || ca(i)=='p')
    FCA(i)=CB(14);
    
    elseif (ca(i)=='Q' || ca(i)=='q')
    FCA(i)=CB(16);
    
    elseif (ca(i)=='R' || ca(i)=='r')
    FCA(i)=CB(8);
    
    elseif (ca(i)=='S' || ca(i)=='s')
    FCA(i)=CB(5);
    
    elseif (ca(i)=='T' || ca(i)=='t')
    FCA(i)=CB(12);
   
    elseif (ca(i)=='U' || ca(i)=='u' || ca(i)=='ú')
    FCA(i)=CB(10);
    
    elseif (ca(i)=='V' || ca(i)=='v')
    FCA(i)=CB(20);
    
    elseif (ca(i)=='W' || ca(i)=='w')
    FCA(i)=CB(28);
    
    elseif (ca(i)=='X' || ca(i)=='x')
    FCA(i)=CB(26);
  
    elseif (ca(i)=='Y' || ca(i)=='y')
    FCA(i)=CB(17);
   
    elseif (ca(i)=='Z' || ca(i)=='z')
    FCA(i)=CB(23);
    
    else
    FCA(i)=CB(1);
    
    end
end
FCA