clear all; clc; close all;
%Valori del circuito
R=68;
c=4*exp(-6);
L=10*10*exp(-3);

%Svolgimento

%Definisco la variabile di Laplace
s=tf('s');
%Definisco le condizioni iniziali e gli ingressi del sistema
%U=input(' what is the input of the system (Laplace domain)?');
%x0=input('what is the initial condition (format:x0=[a;b])?');

A=[-R/L -1/L 0 0; 1/c 0 0 0; 0 1/L -R/L -1/L; 0 0 1/c 0];
B=[1/L; 0; 0; 0];
C=[0 0 0 1];
D=[0];

%Creo il sistema dinamico
sys=ss(A,B,C,D);
%disegno i diagrammi di bode del sistema dinamico
figure(1)
bode(sys)
grid on
