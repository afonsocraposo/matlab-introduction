video = VideoReader('ppg.mp4');
signal = zeros(1,video.NumFrames);
i=1;
while hasFrame(video)
    frame = readFrame(video);
    signal(i)=mean(frame(:,:,1),'all');
    i=i+1;
end
plot(signal)