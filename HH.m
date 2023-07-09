function HH()
    fs = 44100;
    t = linspace(0,1,fs); %0.0000227, 0.0000455, ...
    t = t(1:2646);%1:0.06=44100:x x=2646
    env = exp(-90*t);
    %plot(env);

    noise= rand(size(t));
    %sound(0.05.*noise);
    %plot(noise);
    HH_sound = noise.* env;
    %plot(HH_sound);

    sound(HH_sound, fs);
end