package com.narvii.nvplayer;

/* JADX INFO: loaded from: classes10.dex */
public interface IVideoListener {
    void onCachedBytesRead(long j6, long j10);

    void onErrorDebug(NVVideoException nVVideoException);

    void onPlayerError(NVVideoException nVVideoException);

    void onPlayerStateChanged(boolean z6, int i10);

    void onPositionDiscontinuity(int i10);

    void onPreloadStrategyChanged(String str);

    void onRenderFirstFrameInterval(long j6);

    void onRenderedFirstFrame();

    void onSurfaceSizeChanged(int i10, int i11);

    void onVideoSizeChanged(int i10, int i11);

    void onVideoSizeChanged(int i10, int i11, int i12, float f);

    void onVideoSupportLowResVideo(boolean z6);

    boolean shouldPauseForPageAboveVideo(int i10);
}
