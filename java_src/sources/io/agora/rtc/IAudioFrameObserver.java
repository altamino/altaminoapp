package io.agora.rtc;

/* JADX INFO: loaded from: classes5.dex */
public interface IAudioFrameObserver {
    boolean isMultipleChannelFrameWanted();

    boolean onMixedFrame(byte[] samples, int numOfSamples, int bytesPerSample, int channels, int samplesPerSec);

    boolean onPlaybackFrame(byte[] samples, int numOfSamples, int bytesPerSample, int channels, int samplesPerSec);

    boolean onPlaybackFrameBeforeMixing(byte[] samples, int numOfSamples, int bytesPerSample, int channels, int samplesPerSec, int uid);

    boolean onPlaybackFrameBeforeMixingEx(byte[] samples, int numOfSamples, int bytesPerSample, int channels, int samplesPerSec, int uid, String channelId);

    boolean onRecordFrame(byte[] samples, int numOfSamples, int bytesPerSample, int channels, int samplesPerSec);
}
