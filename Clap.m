function Clap()
    fs = 44100;          
    t = linspace(0,1,fs);%0.0000227, 0.0000455, ...
    t= t(1:33075);%1:0.75=44100:x x=33075
    env = exp(-10*t);  
    %plot(env);

    noise = rand(size(t));
    %sound(0.05.*noise);
    %plot(noise);

    [b, a] = butter(4, [1000 5000]/(fs/2), 'bandpass');
    %https://jp.mathworks.com/help/signal/ref/butter.html
    %次数:次数が高いほど、通過帯域と減衰帯域の境界での傾きが急
    %Wn=fc/(fs/2)正規化カットオフ周波数
    %bandpass：1000-5000hzの間の周波数のみ減衰させず通す
    fnoise = filter(b, a, noise);
    %freqz(b,a[],fs);

    %plot(fnoise);
    %sound(0.1.*fnoise,fs);

    clap_sound = fnoise .* env;
    %plot(clap_sound);
    
    sound(clap_sound, fs);
end