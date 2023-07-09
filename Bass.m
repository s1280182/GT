function Bass()
    fs = 44100;            
    t = linspace(0,1,fs); %0.0000227, 0.0000455, ...サンプリング周期
    t = t(1:24255);%1:0.55=44100:x x=24255
    env = exp(-10*t);%音の減衰
    %plot(env);

    bassdrum_f = 50;
    bassdrum_sound = sin(2*pi*bassdrum_f*t) .* env;
    %plot(sin(2*pi*bassdrum_f*t))
    %plot(bassdrum_sound);
    %sound(sin(2*pi*bassdrum_f*t),fs);

    sound(bassdrum_sound, fs);
end