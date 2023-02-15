clear all
close all
Ti = 0.000001;
file=fopen('unmanual.txt');
ca=fscanf(file,'%c');
T=0;
L=[32:255];     %ASCII%

% Total de Letras %
for i=1:length(L)
    dato=char(L(i));
    total(i)=length(strfind(ca,dato));
    Caracter(i) = dato;
    T=total(i)+T;
end
TotalDeCaracteres= T 
Long = 1:32;
dec2bin(Long);
F = 1:length(ca);


VocalA=[32:255];
TA=0;   TB=0;   TC=0;   TD=0; TE=0; TF=0; TG=0; TH=0; TI=0; TJ=0; TK=0; TL=0;
TM=0; TN=0; TENE=0; TO=0; TP=0; TQ=0; TR=0; TS=0; TT=0; TU=0; TV=0; TW=0; TX=0; TY=0;
TZ=0; TESPACIO=0;
% Variable de la letra con código binario %
ESPACIOA='00000'; EA='00001'; AA='00010'; OA='00011'; SA='00100'; NA='00101'; IA='00110'; RA='00111'; LA= '01000'; UA='01001'; DA='01010';
TA='01011'; CA='01100'; PA='01101'; MA='01110'; QA='01111'; YA='10000'; BA='10001'; GA='10010'; VA='10011'; FA='10100'; HA='10101';
ZA='10110'; JA='10111'; NANA='11000'; XA='11001'; KA='11010'; WA='11011';

% Sabemos que el vector resultante será el numero total de caracteres por 5
% ya que son 5 bits por lo que %

LongitudVector = T*5;
CadenaInicial='';
CadenaEjemplo = '';
Cad = '';

Codigo = [0,10,110,1110,11110,111110,1111110,11111110,111111110,1111111110,11111111110,111111111110,1111111111110,11111111111110,...
    111111111111110,1111111111111110,11111111111111110,111111111111111110,1111111111111111110,11111111111111111110,...
    111111111111111111110,1111111111111111111110,11111111111111111111110,111111111111111111111110,1111111111111111111111110,...
    11111111111111111111111110,111111111111111111111111110,1111111111111111111111111110];
for i=1:length(ca)
    
    %ca(i)=char(VocalA(i));r
    if (ca(i)=='A' || ca(i)=='a' || ca(i)=='á')
    %total(i)=length(strfind(ca,ca(i)))
    %TA=total(i)+TA;
    F(i)=Codigo(3);
    TA=TA+1;
   % Final(0)=TA/T;
    elseif (ca(i)=='B' || ca(i)=='b')
    %total(i)=length(strfind(ca,ca(i)))
    %TB=total(i)+TB;
    F(i)=Codigo(18);
    TB=TB+1;
   % Final(1)=TB/T;
    elseif (ca(i)=='C' || ca(i)=='c')
    %total(i)=length(strfind(ca,ca(i)))
    %TC=total(i)+TC;    
    F(i)=Codigo(13);
    TC=TC+1;
   % Final(2)=TC/T;
    elseif (ca(i)=='D' || ca(i)=='d')
    %total(i)=length(strfind(ca,ca(i)))
    %TD=total(i)+TD;
    F(i)=Codigo(11);
    TD=TD+1;
   % Final(3)=TD/T;
    elseif (ca(i)=='E' || ca(i)=='e' || ca(i)=='é')
    %total(i)=length(strfind(ca,ca(i)))
    %TE=total(i)+TE;
    F(i)=Codigo(2);
    TE=TE+1;
   % Final(4)=TE/T;
    elseif (ca(i)=='F' || ca(i)=='f')
    %total(i)=length(strfind(ca,ca(i)))
    %TF=total(i)+TF;
    F(i)=Codigo(21);
    TF=TF+1;
   % Final(5)=TF/T;
    elseif (ca(i)=='G' || ca(i)=='g')
    %total(i)=length(strfind(ca,ca(i)))
    %TG=total(i)+TG;
    F(i)=Codigo(19);
    TG=TG+1;
   % Final(6)=TG/T;
    elseif (ca(i)=='H' || ca(i)=='h')
    %total(i)=length(strfind(ca,ca(i)))
    %TH=total(i)+TH;
    F(i)=Codigo(22);
    TH=TH+1;

   % Final(7)=TH/T;
    elseif (ca(i)=='I' || ca(i)=='i' || ca(i)=='í')
    %total(i)=length(strfind(ca,ca(i)))
    %TI=total(i)+TI;
    F(i)=Codigo(7);
    TI=TI+1;
  
   % Final(8)=TI/T;
    elseif (ca(i)=='J' || ca(i)=='j')
    %total(i)=length(strfind(ca,ca(i)))
    %TJ=total(i)+TJ;
    F(i)=Codigo(24);
    TJ=TJ+1;

   % Final(9)=TJ/T;
    elseif (ca(i)=='K' || ca(i)=='k')
    %total(i)=length(strfind(ca,ca(i)))
    %TK=total(i)+TK;
    F(i)=Codigo(27);
    TK=TK+1;
  
   % Final(10)=TK/T;
    elseif (ca(i)=='L' || ca(i)=='l')
    %total(i)=length(strfind(ca,ca(i)))
    %TL=total(i)+TL;
    F(i)=Codigo(9);
    TL=TL+1;
    
   % Final(11)=TL/T;
    elseif (ca(i)=='M' || ca(i)=='m')
    %total(i)=length(strfind(ca,ca(i)))
    %TM=total(i)+TM;
    F(i)=Codigo(15);
    TM=TM+1;
    
   % Final(12)=TM/T;
    elseif (ca(i)=='N' || ca(i)=='n')
    %total(i)=length(strfind(ca,ca(i)))
    %TN=total(i)+TN;
    F(i)=Codigo(6);
    TN=TN+1;

   % Final(13)=TN/T;
    elseif (ca(i)=='Ñ' || ca(i)=='ñ')
    %total(i)=length(strfind(ca,ca(i)))
    %TENE=total(i)+TENE;
    F(i)=Codigo(25);
    TENE=TENE+1;

   % Final(14)=TENE/T;
    elseif (ca(i)=='O' || ca(i)=='o' || ca(i)=='ó')
    %total(i)=length(strfind(ca,ca(i)))
    %TO=total(i)+TO;
    F(i)=Codigo(4);
    TO=TO+1;

   % Final(15)=TO/T;
    elseif (ca(i)=='P' || ca(i)=='p')
    %total(i)=length(strfind(ca,ca(i)))
    %TP=total(i)+TP;
    F(i)=Codigo(14);
    TP=TP+1;

   % Final(16)=TP/T;
    elseif (ca(i)=='Q' || ca(i)=='q')
    %total(i)=length(strfind(ca,ca(i)))
    %TQ=total(i)+TQ;
    F(i)=Codigo(16);
    TQ=TQ+1;
   % Final(17)=TQ/T;
    elseif (ca(i)=='R' || ca(i)=='r')
    %total(i)=length(strfind(ca,ca(i)))
    %TR=total(i)+TR;
    F(i)=Codigo(8);
    TR=TR+1;
  
   % Final(18)=TR/T;
    elseif (ca(i)=='S' || ca(i)=='s')
    %total(i)=length(strfind(ca,ca(i)))
    %TS=total(i)+TS;
    F(i)=Codigo(5);
    TS=TS+1;

   % Final(19)=TS/T;
    elseif (ca(i)=='T' || ca(i)=='t')
    %total(i)=length(strfind(ca,ca(i)))
    %TT=total(i)+TT;
    F(i)=Codigo(12);
    TT=TT+1;
   % Final(20)=TT/T;
    elseif (ca(i)=='U' || ca(i)=='u' || ca(i)=='ú')
    %total(i)=length(strfind(ca,ca(i)))
    %TU=total(i)+TU;
    F(i)=Codigo(10);
    TU=TU+1;
   % Final(21)=TU/T;
    elseif (ca(i)=='V' || ca(i)=='v')
    %total(i)=length(strfind(ca,ca(i)))
    %TV=total(i)+TV;
    F(i)=Codigo(20);
    TV=TV+1;
   % Final(22)=TV/T;
    elseif (ca(i)=='W' || ca(i)=='w')
    %total(i)=length(strfind(ca,ca(i)))
    %TW=total(i)+TW;
    F(i)=Codigo(28);
    TW=TW+1;
   % Final(23)=TW/T;
    elseif (ca(i)=='X' || ca(i)=='x')
    %total(i)=length(strfind(ca,ca(i)))
    %TX=total(i)+TX;
    F(i)=Codigo(26);
    TX=TX+1;
   % Final(24)=TX/T;
    elseif (ca(i)=='Y' || ca(i)=='y')
    %total(i)=length(strfind(ca,ca(i)))
    %TY=total(i)+TY;
    F(i)=Codigo(17);
    TY=TY+1;
   % Final(25)=TY/T;
    elseif (ca(i)=='Z' || ca(i)=='z')
    %total(i)=length(strfind(ca,ca(i)))
    %TZ=total(i)+TZ;
    F(i)=Codigo(23);
    TZ=TZ+1;
   % Final(26)=TZ/T;
    else
    %total(i)=length(strfind(ca,ca(i)))
    %TESPACIO=total(i)+TESPACIO;
    F(i)=Codigo(1);
    TESPACIO=TESPACIO+1;
   % Final(27)=TESPACIO/T;
    end
  
end 

TotalCarac = (TESPACIO*1 + TE*2 + TA*3 + TO*4 + TS*5 + TN*6 + TI*7 + TR*8 + TL*9 + TU*10 + TD*11 + TT*12 + TC*13 + TP*14 + TM*15 + TQ*16 + TY*17 + TB*18 + TG*19 + TV*20 + TF*21 + TH*22 + TZ*23 + TJ*24 + TENE*25 + TX*26 + TK*27 + TW*28);
H=TotalCarac;
H
G = F;
F;

%TablaNumeroEntero = table(TA,TB,TC,TD,TE,TF,TG,TH,TI,TJ,TK,TL,TM,TN,TENE,TO,TP,TQ,TR,TS,TT,TU,TV,TW,TX,TY,TZ,TESPACIO)
%TablaNumeroProbabilidad = table(TA/T,TB/T,TC/T,TD/T,TE/T,TF/T,TG/T,TH/T,TI/T,TJ/T,TK/T,TL/T,TM/T,TN/T,TENE/T,TO/T,TP/T,TQ/T,TR/T,TS/T,TT/T,TU/T,TV/T,TW/T,TX/T,TY/T,TZ/T,TESPACIO/T)

%TablaSimbolo = {'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'ñ';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';'Espacio'};
%TablaNumeroEntero = [TA;TB;TC;TD;TE;TF;TG;TH;TI;TJ;TK;TL;TM;TN;TENE;TO;TP;TQ;TR;TS;TT;TU;TV;TW;TX;TY;TZ;TESPACIO];
%TablaNumeroProbabilidad = [TA/T;TB/T;TC/T;TD/T;TE/T;TF/T;TG/T;TH/T;TI/T;TJ/T;TK/T;TL/T;TM/T;TN/T;TENE/T;TO/T;TP/T;TQ/T;TR/T;TS/T;TT/T;TU/T;TV/T;TW/T;TX/T;TY/T;TZ/T;TESPACIO/T];
%T = table(TablaSimbolo,TablaNumeroEntero,TablaNumeroProbabilidad)

%unioncad = [CadenaInicial,''];
%Lontitud = length(CadenaInicial)
%CadenaEjemplo
