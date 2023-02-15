% Autor: Herminio Noguera Ruiz.
% Test del algoritmo codificador de Código Huffman.
% -------------------------------------------------
vec = [5 7 9 15 32 99 78];
fprintf('Número de apariencias de símbolos fuente:\n');
fprintf('-----------------------------------------\n\n');
for i=1:length(vec)
 fprintf('\tSímbolo %d: %d\n', i, vec(i));
end
[codigo, compresion] = huffman (vec);
codigo
compresion
