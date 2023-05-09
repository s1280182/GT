% MIDIファイルを読み込む
midi = readmidi('SM.mid');

% BPMを50%加速する
accelerationFactor = 0.5; % 50%加速する場合は1.5に設定する

% MIDIイベントのタイムスタンプを調整する
midi(:,6) = midi(:,6) ./ accelerationFactor;

% 新しいMIDIファイルを書き出す
writemidi(midi, 'SM2.mid');


