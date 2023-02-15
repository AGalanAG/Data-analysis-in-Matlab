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

% Number of source symbols
N = 20;

W = zeros(N, 1);
for i = 1:length(W)
	% weight of this source symbol
	W(i) = i;

	% label for this source symbol
	L{i} = sprintf('I am node #%d',W(i));
end

% size of output code alphabet (e.g. D = 2 for binary)
D = 2;

% generate Huffman code and display code tree on the screen
C = huffman(D, W, L, 'screen')