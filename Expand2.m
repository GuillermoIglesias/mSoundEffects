function y = Expand2(file,n)
[x,Fs] = audioread(file);
dur = length(x);
y = zeros(0,1);

for k = 1:dur
   for j = 1:n
       y(end+1) = x(k);
   end  
end

%sound(y,Fs*(n+1))
sound(y,Fs)
   
end
