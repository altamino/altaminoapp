package com.narvii.nvplayer;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.NonNull;
import com.narvii.app.NVContext;
import com.narvii.model.Media;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
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

    void addWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener);

    void clear();

    void clearVideoListener(IVideoListener iVideoListener);

    void clearVideoSurface();

    void concatenatingQuickSetting(Context context, @NonNull List<NvVideoClip> list);

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

    boolean isCached(String str, long j6, long j10);

    boolean isError();

    boolean isLoadLowResVideo();

    boolean isPlaying();

    void lockMute(boolean z6);

    void preload(NVContext nVContext, List<Media> list);

    void quickSetting(Context context, NVMediaSource nVMediaSource, Surface surface);

    void release();

    void removeWindowIndexChangeListener(WindowIndexChangeListener windowIndexChangeListener);

    void reset();

    void retry();

    void seekTo(long j6);

    void seekTo(long j6, boolean z6);

    void seekToWindow(int i10);

    @Deprecated
    void setLoop(boolean z6);

    void setPlayWhenReady(boolean z6);

    void setPlayWhenReady(boolean z6, boolean z10);

    void setVideoListener(IVideoListener iVideoListener);

    void setVideoSurface(Surface surface);

    void setVolume(float f);

    long size();
}
