package com.narvii.chat.screenroom;

/* loaded from: classes2.dex */
public interface MediaPlayerControl {
    boolean canPause();

    boolean canSeekBackward();

    boolean canSeekForward();

    int getAudioSessionId();

    int getBufferPercentage();

    int getCurrentPosition();

    int getDuration();

    float getVolume();

    boolean isPlaying();

    boolean isPreparing();

    boolean isTargetPaused();

    void pause();

    void seekTo(int i);

    void setVolume(float f);

    void start();
}
