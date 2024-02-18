% Assginment: Prelab 5
% User: Laurence Kim
% Date: 04/27/2021
% Purpose: Prepare for Lab 5
%% Part 1 & 2 
clc
clear all
close all

Fs = 8000;
T  = 1/Fs;
F0 = 1280;
i = 1;

figure()
hold on
for N = [200 100 50]
    n = linspace(0,N-1,N);
    dF = Fs/N;
    x  = cos(F0*2*pi*T*n);
    X  = fft(x);
    fv = (0:N-1)*dF;
    subplot(3,1,i);
    plot(fv,abs(X))
    i = i + 1;
end
hold off

% N = 200
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1280 and 6720. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 80. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices

% iii. What is the amplitude of the two pulses? How is this related to N?
% 100. It is N/2

% N = 100
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1280 and 6720. F0 and Fs-f0.
% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 160. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices
% iii. What is the amplitude of the two pulses? How is this related to N?
% 50. It is N/2

% N = 50
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1280 and 6720. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 320. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices

% iii. What is the amplitude of the two pulses? How is this related to N?
% 250. It is N/2



%% Step 3
i = 1;
F0 = 1200;
figure()
hold on
for N = [200 100 50]
    n = linspace(0,N-1,N);
    dF = Fs/N;
    x  = cos(F0*2*pi*T*n);
    X  = fft(x);
    fv = (0:N-1)*dF;
    subplot(3,1,i);
    plot(fv,abs(X))
    i = i + 1;
end
hold off

% N = 200
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1200 and 6800. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 80. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices

% iii. What is the amplitude of the two pulses? How is this related to N?
% 100. It is N/2

% N = 100
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1200 and 6800. F0 and Fs-f0.
% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 160. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices
% iii. What is the amplitude of the two pulses? How is this related to N?
% 50. It is N/2

% N = 50
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1200 and 6800. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% it is hard to tell as the sample points are inaccurate for our frequency

% iii. What is the amplitude of the two pulses? How is this related to N?
% 16.28. It is obviously incorrect as our N is too low.


% . Do all three plots have only two pulses? Explain any difference in the plots
% of the DFTs compared to previous results.
% Only two pulses. Other than location of pulse peaks, the n=50 graph has a
% wacky reset
%% Step 4
i = 1;
F0 = 1000;
figure()
hold on
for N = [200 100 50]
    n = linspace(0,N-1,N);
    dF = Fs/N;
    x  = cos(F0*2*pi*T*n);
    X  = fft(x);
    fv = (0:N-1)*dF;
    subplot(3,1,i);
    plot(fv,abs(X))
    i = i + 1;
end
hold off


% N = 200
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1000 and 7000. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% 80. the width is smallest as dF is small as N is large. F0 is the
% midpoint of our indices

% iii. What is the amplitude of the two pulses? How is this related to N?
% 100. It is N/2

% N = 100
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1000 and 7000. F0 and Fs-f0.
% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% it is hard to tell as the sample points are inaccurate for our frequency
% iii. What is the amplitude of the two pulses? How is this related to N?
% 32.33. It is obviously incorrect as our N is too low.

% N = 50
% i. What are the frequency values of the two pulses? How is this related to F0?
% 1000 and 7000. F0 and Fs-f0.

% ii. What are the indices of the two pulses? How is this related to F0 and ∆𝑓?
% it is hard to tell as the sample points are inaccurate for our frequency


% iii. What is the amplitude of the two pulses? How is this related to N?
% 22.87. It is obviously incorrect as our N is too low.


% . Do all three plots have only two pulses? Explain any difference in the plots
% of the DFTs compared to previous results.
% Only two pulses. Other than location of pulse peaks, the n=100 and n=50 graph have
% wacky resets

%% Step 5
N = 100;
n = linspace(0,N-1,N);
F1 = 1000;
F2 = 1280;

x1 = cos(F1*2*pi*T*n);
x2 = cos(F2*2*pi*T*n);

N2 = 2*N;
dF = Fs/N2;
x = [x1,x2];
X = fft(x);
fv = (0:N2-1)*dF;
figure()
plot(fv,abs(X))

% Explain the DFT plot in terms of the previously created DFT plots.
% There are two peaks at each pulse and have oscillation rather than smooth
% and contiguous rise and falls

%% Step 6
N = 200;
n = linspace(0,N-1,N);
F1 = 1000;
F2 = 1280;

x1 = cos(F1*2*pi*T*n) + cos(F2*2*pi*T*n);

dF = Fs/N;
X = fft(x1);
fv = (0:N-1)*dF;
figure()
plot(fv,abs(X))

% Explain the DFT plot in terms of the previously created DFT plots.
% similar as the last in that there are still two peaks but no oscillation, but different from the previous ones as there are two 
% peaks at each pulse and have oscillation rather than smooth
% and contiguous rise and falls
