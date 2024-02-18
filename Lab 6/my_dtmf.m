
function dial_sig = my_dtmf(tone_time, quiet_time, fs, dial_vals)
 
    dial_sig = [ ];
    samples_q = zeros(1,quiet_time*fs);
    samples_t = tone_time * fs;
    n_in = tone_time*fs;

    tv = 0:1/fs:tone_time-1/fs;

    tones = [   [697, 1209]; [697, 1336]; [697, 1477];  ...
                [770, 1209]; [770, 1336]; [770, 1477];  ...
                [852, 1209]; [852, 1336]; [852, 1477];  ...
                [941, 1209]; [941, 1336]; [941, 1477];  ];

    for n = 1:length(dial_vals)
        t_lo = cos(2*pi*tones(dial_vals(n),1).*tv);
        t_hi = cos(2*pi*tones(dial_vals(n),2).*tv);
        t_combined = normalize(t_lo + t_hi);
        dial_sig = [dial_sig t_combined samples_q];
    end

    dial_sig = dial_sig ./ max([dial_sig]);
end
