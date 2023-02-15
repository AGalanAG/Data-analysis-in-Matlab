clear all close all

input=[1 0];
codf1=conv_encoder(input);
recv=[1 1 0 1 0 1 0 0 0 1];
desc=descodificador_Conv(recv);

disp("Entrada:")
input
disp("Codificacion:")
codf1
disp("Descodificacion:")
desc