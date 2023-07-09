function Snare()
    fs = 44100;
    t = linspace(0,1,fs); %0.0000227, 0.0000455, ...
    t = t(1:30870);%1:0.7=44100:x x=30870
    env = exp(-10*t);
    %plot(env);

    noise= rand(size(t));
    %sound(0.05.*noise);
    %plot(noise);
    snaredrum_sound = noise.* env;
    %plot(snaredrum_sound);

    sound(snaredrum_sound, fs);
end