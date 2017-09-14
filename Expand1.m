function y = Expand1(file)
[x,Fs] = audioread(file);
dur = length(x);
y = zeros(dur*2,1);

for k = 1:dur
    y(k*2-1) = x(k);
end

%Fs = Fs*2
sound(y,Fs)
   
end

