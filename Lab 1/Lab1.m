% Initialize
figure(1);
Fs = 8000;  % Sampling frequency in Hz
dT = 1/Fs;  % Time step
f1 = 500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f1*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f1*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time

% Initialize
figure(2);
f1 = 1500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f1*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f1*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time

% Initialize
figure(3);
f2 = 3500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f2*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f2*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time

% Initialize
figure(4);
f3 = 6500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f3*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f3*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time

% Initialize
figure(5);
f4 = 7500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f4*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f4*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time


% Initialize
figure(6);
title('');
f5 = 8500;   % frequency of signal
n_plot = 32;
tvec = (0:(n_plot-1))*dT;  % get vector of time values
A = 2*pi*f5*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
plot(tvec, sig)            % plot signal as a function off time
n_sound = 8000;
tvec = (0:(n_sound-1))*dT;  % get vector of time values
A = 2*pi*f5*tvec;          % get angle as a function of time
sig = 0.9*cos(A);          % get cosine of angles as a function of time
sound(sig)            % plot signal as a function off time
