function y = Echo(file,delayms,n)
[x,Fs] = audioread(file);
att = 0.30;
dur = length(x);
delay = int64(Fs*delayms/1000); 

y = zeros(dur+(delay*n),1);
y(1:dur) = x;

for k = 1:n
    e_delay = delay*k;
    echo = zeros(length(y),1);
    echo(e_delay+1:dur+e_delay) = att*x;
    y = y + echo;
end

%Fs = Fs*(length(y)/length(x));
sound(y,Fs)

end