clear all, clc, close all;

x=3-5i
y=5+4i
z=8*exp(2*pi*i/3)

%vec=[x^2; x*y; z*x/y]

for vec=[x^2; x*y; z*x/y]
    
    real=real(vec)
    imag=imag(vec)
    abs=abs(vec)
    angle=angle(vec)
    conj=conj(vec)
end