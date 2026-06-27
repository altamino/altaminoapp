package com.narvii.nvplayer;

import android.content.Context;
import android.view.Surface;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import java.util.List;

/* loaded from: classes3.dex */
public interface INVPlayer {
    public static final long CACHED_SIZE = 1048576;
    public static final long LOW_RES_CACHED_SIZE = 512000;
    public static final String LOW_RES_VIDEO_PREFS_KEY = "load_low_res_video";
    public static final int STATE_BUFFERING = 2;
    public static final int STATE_ENDED = 4;
    public static final int STATE_IDLE = 1;
    public static final int STATE_READY = 3;
    public static final String TAG = "INVPlayer";
    public static final String VIDEO_AUTO_PLAY_PREFS_KEY = "video_auto_play";

    /* renamed from: com.narvii.nvplayer.INVPlayer$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static long $default$getPreCachedSize(INVPlayer iNVPlayer) {
            return 1048576L;
        }

        public static boolean $default$isError(INVPlayer iNVPlayer) {
            return false;
        }

        public static boolean $default$isLoadLowResVideo(INVPlayer iNVPlayer) {
            return false;
        }

        public static void $default$retry(INVPlayer iNVPlayer) {
        }

        public static void $default$seekTo(INVPlayer iNVPlayer, long j, boolean z) {
        }
    }

    void addWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener);

    void clear();

    void clearVideoListener(IVideoListener iVideoListener);

    void clearVideoSurface();

    void concatenatingQuickSetting(Context context, List<NvVideoClip> list);

    long getCurrentPosition();

    int getCurrentWindowIndex();

    long getDuration();

    NVMediaSource getMediaSource();

    boolean getPlayWhenReady();

    int getPlayerState();

    String getPlayingUrl();

    long getPreCachedSize();

    long getTotalDuration();

    VideoLogHelper getVideoLogHelper();

    Surface getVideoSurface();

    boolean isCached(String str, long j, long j2);

    boolean isError();

    boolean isLoadLowResVideo();

    boolean isPlaying();

    void lockMute(boolean z);

    void preload(NVContext nVContext, List<Media> list);

    void quickSetting(Context context, NVMediaSource nVMediaSource, Surface surface);

    void release();

    void removeWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener);

    void reset();

    void retry();

    void seekTo(long j);

    void seekTo(long j, boolean z);

    void seekToWindow(int i);

    @Deprecated
    void setLoop(boolean z);

    void setPlayWhenReady(boolean z);

    void setPlayWhenReady(boolean z, boolean z2);

    void setVideoListener(IVideoListener iVideoListener);

    void setVideoSurface(Surface surface);

    void setVolume(float f);

    long size();
}
