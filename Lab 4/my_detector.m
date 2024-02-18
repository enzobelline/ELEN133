function Y = my_detector(x, smoothLength)

xa = abs(x);
b  =(ones(1, smoothLength))/smoothLength;

Y  = filter(b, 1, xa);

end