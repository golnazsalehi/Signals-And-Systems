fr=[852 697 941 697 825 852 770 697 697];
fc=[1336 1209 1336 1209 1477 1336 1209 1336 1477];
fs = 8000;
Ts=1/fs;
Ton=0.1;
Toff =0.1;
t=0:Ts:Ton;
y=[];
for i=1:9
    y1 = sin(2*pi*fr(i)*t);
    y2 = sin(2*pi*fc(i)*t);
    y3 = (y1 + y2)/2;
    pause=zeros(1,801);
    y=cat(2,y,y3,pause);
end
sound(y,fs)
audiowrite("y.wav",y,fs)