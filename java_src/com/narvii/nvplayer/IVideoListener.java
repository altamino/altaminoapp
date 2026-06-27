package com.narvii.nvplayer;

/* loaded from: classes3.dex */
public interface IVideoListener {

    /* renamed from: com.narvii.nvplayer.IVideoListener$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static void $default$onCachedBytesRead(IVideoListener iVideoListener, long j, long j2) {
        }

        public static void $default$onErrorDebug(IVideoListener iVideoListener, NVVideoException nVVideoException) {
        }

        public static void $default$onPlayerError(IVideoListener iVideoListener, NVVideoException nVVideoException) {
        }

        public static void $default$onPlayerStateChanged(IVideoListener iVideoListener, boolean z, int i) {
        }

        public static void $default$onPositionDiscontinuity(IVideoListener iVideoListener, int i) {
        }

        public static void $default$onPreloadStrategyChanged(IVideoListener iVideoListener, String str) {
        }

        public static void $default$onRenderFirstFrameInterval(IVideoListener iVideoListener, long j) {
        }

        public static void $default$onRenderedFirstFrame(IVideoListener iVideoListener) {
        }

        public static void $default$onSurfaceSizeChanged(IVideoListener iVideoListener, int i, int i2) {
        }

        public static void $default$onVideoSizeChanged(IVideoListener iVideoListener, int i, int i2) {
        }

        public static void $default$onVideoSizeChanged(IVideoListener iVideoListener, int i, int i2, int i3, float f) {
        }

        public static void $default$onVideoSupportLowResVideo(IVideoListener iVideoListener, boolean z) {
        }

        public static boolean $default$shouldPauseForPageAboveVideo(IVideoListener iVideoListener, int i) {
            return false;
        }
    }

    void onCachedBytesRead(long j, long j2);

    void onErrorDebug(NVVideoException nVVideoException);

    void onPlayerError(NVVideoException nVVideoException);

    void onPlayerStateChanged(boolean z, int i);

    void onPositionDiscontinuity(int i);

    void onPreloadStrategyChanged(String str);

    void onRenderFirstFrameInterval(long j);

    void onRenderedFirstFrame();

    void onSurfaceSizeChanged(int i, int i2);

    void onVideoSizeChanged(int i, int i2);

    void onVideoSizeChanged(int i, int i2, int i3, float f);

    void onVideoSupportLowResVideo(boolean z);

    boolean shouldPauseForPageAboveVideo(int i);
}
