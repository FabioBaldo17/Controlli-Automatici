clear all, clc, close all;
A=[-1 2 -2;-20 -8 10;-16 -1 3];
%Trasposta
A_t=transpose(A)
%Rango
rank=rank(A)
%Inverse
A_inv=inv(A)

%Autovalori
eigs=eig(A)
eigs_roots=roots(poly(A))



