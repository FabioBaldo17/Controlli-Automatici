%Script for the calculation of poles and residues
%of a dynamic system given a A B C D description
clc; clear all; close all;

%define Laplace variable
s=tf('s');

%Get the input matrices
A = input("Insert the A matrix \n A = ");
B = input("Insert the B matrix \ B = n");
C = input("Insert the C matrix \n C = ");
D = input("Insert the D matrix \n D = ");
%Get the input signal tranformed
U=input("Insert the input in laplace domain \n D = ");
%Get the initial condition
x0=input("Insert the initial condition \n x0 = ");
[m,n]=size(A);
Y = zpk(minreal(C*inv((s*eye(m)-A))*(B*U+x0),1e-3)) %#ok<MINV,NOPTS>
%Separate the numerator and the denominator
[num_Y,den_Y]=tfdata(Y,'v');
%Calculate the residues and the poles of a system
[r,p]=residue(num_Y,den_Y) %#ok<NOPTS>