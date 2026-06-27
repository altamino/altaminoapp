package com.narvii.video;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.Map;
import tv.danmaku.ijk.media.player.AndroidMediaPlayer;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes3.dex */
class SharedMediaPlayer {
    static final String TAG = "videoplayer";
    private static AudioManager gAudioManager;
    static int gAudioSession;
    static IMediaPlayer.OnBufferingUpdateListener gBufferingUpdateListener;
    static IMediaPlayer.OnCompletionListener gCompletionListener;
    static int gCurrentBufferPercentage;
    static boolean gCurrentRenderingStart;
    static int gCurrentState;
    static IMediaPlayer.OnErrorListener gErrorListener;
    static IMediaPlayer.OnInfoListener gInfoListener;
    private static IMediaPlayer gMediaPlayer;
    static IMediaPlayer.OnPreparedListener gPreparedListener;
    private static Uri gUri;
    static int gVideoHeight;
    static IMediaPlayer.OnVideoSizeChangedListener gVideoSizeChangedListener;
    static int gVideoWidth;
    static final boolean VERBOSE = SharedVideoView.VERBOSE;
    private static final IMediaPlayer.OnPreparedListener sPreparedListener = new IMediaPlayer.OnPreparedListener() { // from class: com.narvii.video.SharedMediaPlayer.1
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) throws IllegalStateException {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return;
            }
            if (SharedMediaPlayer.VERBOSE) {
                Log.d(SharedMediaPlayer.TAG, "onPrepared()");
            }
            if ((iMediaPlayer instanceof IjkMediaPlayer) && SharedMediaPlayer.gPreparedListener == null) {
                iMediaPlayer.pause();
            }
            SharedMediaPlayer.gCurrentState = 3;
            IMediaPlayer.OnPreparedListener onPreparedListener = SharedMediaPlayer.gPreparedListener;
            if (onPreparedListener != null) {
                onPreparedListener.onPrepared(iMediaPlayer);
            }
        }
    };
    private static final IMediaPlayer.OnErrorListener sErrorListener = new IMediaPlayer.OnErrorListener() { // from class: com.narvii.video.SharedMediaPlayer.2
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return true;
            }
            if (SharedMediaPlayer.VERBOSE) {
                Log.d(SharedMediaPlayer.TAG, "onError(): " + i + "," + i2);
            }
            SharedMediaPlayer.gCurrentState = -1;
            IMediaPlayer.OnErrorListener onErrorListener = SharedMediaPlayer.gErrorListener;
            if (onErrorListener != null) {
                return onErrorListener.onError(iMediaPlayer, i, i2);
            }
            return false;
        }
    };
    private static IMediaPlayer.OnVideoSizeChangedListener sVideoSizeChangedListener = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.narvii.video.SharedMediaPlayer.3
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return;
            }
            SharedMediaPlayer.gVideoWidth = i;
            SharedMediaPlayer.gVideoHeight = i2;
            IMediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener = SharedMediaPlayer.gVideoSizeChangedListener;
            if (onVideoSizeChangedListener != null) {
                onVideoSizeChangedListener.onVideoSizeChanged(iMediaPlayer, i, i2, i3, i4);
            }
        }
    };
    private static IMediaPlayer.OnCompletionListener sCompletionListener = new IMediaPlayer.OnCompletionListener() { // from class: com.narvii.video.SharedMediaPlayer.4
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(final IMediaPlayer iMediaPlayer) {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return;
            }
            if (SharedMediaPlayer.VERBOSE) {
                Log.d(SharedMediaPlayer.TAG, "onCompletion()");
            }
            if ((iMediaPlayer instanceof AndroidMediaPlayer) && iMediaPlayer.isLooping()) {
                final long currentPosition = iMediaPlayer.getCurrentPosition();
                Utils.postDelayed(new Runnable() { // from class: com.narvii.video.SharedMediaPlayer.4.1
                    @Override // java.lang.Runnable
                    public void run() throws IllegalStateException {
                        if (iMediaPlayer.getCurrentPosition() == currentPosition) {
                            iMediaPlayer.pause();
                            iMediaPlayer.seekTo(0L);
                            iMediaPlayer.start();
                        }
                    }
                }, 50L);
                return;
            }
            SharedMediaPlayer.gCurrentState = 6;
            IMediaPlayer.OnCompletionListener onCompletionListener = SharedMediaPlayer.gCompletionListener;
            if (onCompletionListener != null) {
                onCompletionListener.onCompletion(iMediaPlayer);
            }
        }
    };
    private static IMediaPlayer.OnInfoListener sInfoListener = new IMediaPlayer.OnInfoListener() { // from class: com.narvii.video.SharedMediaPlayer.5
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
        public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return true;
            }
            if (SharedMediaPlayer.VERBOSE) {
                Log.d(SharedMediaPlayer.TAG, "onInfo(), " + i + "," + i2);
            }
            if (i == 702 && !SharedMediaPlayer.gCurrentRenderingStart) {
                Utils.postDelayed(SharedMediaPlayer.sRenderingStartBuffer, 50L);
            } else if (i == 701) {
                Utils.handler.removeCallbacks(SharedMediaPlayer.sRenderingStartBuffer);
            } else if (i == 3) {
                SharedMediaPlayer.gCurrentRenderingStart = true;
            } else if (i == 1 && !SharedMediaPlayer.gCurrentRenderingStart && Build.VERSION.SDK_INT < 16) {
                Utils.handler.removeCallbacks(SharedMediaPlayer.sRenderingStartBuffer);
                Utils.postDelayed(SharedMediaPlayer.sRenderingStartBuffer, 50L);
            }
            IMediaPlayer.OnInfoListener onInfoListener = SharedMediaPlayer.gInfoListener;
            if (onInfoListener != null) {
                return onInfoListener.onInfo(iMediaPlayer, i, i2);
            }
            return false;
        }
    };
    private static final Runnable sRenderingStartBuffer = new Runnable() { // from class: com.narvii.video.SharedMediaPlayer.6
        @Override // java.lang.Runnable
        public void run() {
            if (SharedMediaPlayer.gCurrentRenderingStart || SharedMediaPlayer.gMediaPlayer == null || SharedMediaPlayer.gCurrentState < 1) {
                return;
            }
            if (SharedMediaPlayer.gMediaPlayer.getCurrentPosition() > 0) {
                SharedMediaPlayer.gCurrentRenderingStart = true;
            } else {
                Utils.postDelayed(this, 50L);
            }
        }
    };
    private static IMediaPlayer.OnBufferingUpdateListener sBufferingUpdateListener = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.narvii.video.SharedMediaPlayer.7
        @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
            if (iMediaPlayer != SharedMediaPlayer.gMediaPlayer) {
                return;
            }
            SharedMediaPlayer.gCurrentBufferPercentage = i;
            IMediaPlayer.OnBufferingUpdateListener onBufferingUpdateListener = SharedMediaPlayer.gBufferingUpdateListener;
            if (onBufferingUpdateListener != null) {
                onBufferingUpdateListener.onBufferingUpdate(iMediaPlayer, i);
            }
        }
    };

    SharedMediaPlayer() {
    }

    static IMediaPlayer getMediaPlayer(Context context, Uri uri, Map<String, String> map) {
        int i;
        IMediaPlayer iMediaPlayer;
        if (gAudioManager == null) {
            gAudioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        }
        if (uri != null && uri.equals(gUri) && (i = gCurrentState) > 0 && i < 6 && (iMediaPlayer = gMediaPlayer) != null) {
            return iMediaPlayer;
        }
        release();
        String str = Build.CPU_ABI;
        if (str != null && str.startsWith("arm")) {
            try {
                gMediaPlayer = new IjkMediaPlayer();
            } catch (UnsatisfiedLinkError e) {
                Log.e("media player", e);
            }
        }
        if (gMediaPlayer == null) {
            gMediaPlayer = new AndroidMediaPlayer();
        }
        try {
            if (gMediaPlayer instanceof IjkMediaPlayer) {
                ((IjkMediaPlayer) gMediaPlayer).setOption(4, "enable-accurate-seek", 1L);
            }
            gAudioSession = gMediaPlayer.getAudioSessionId();
            gMediaPlayer.setOnPreparedListener(sPreparedListener);
            gMediaPlayer.setOnErrorListener(sErrorListener);
            gMediaPlayer.setOnVideoSizeChangedListener(sVideoSizeChangedListener);
            gMediaPlayer.setOnCompletionListener(sCompletionListener);
            gMediaPlayer.setOnInfoListener(sInfoListener);
            gMediaPlayer.setOnBufferingUpdateListener(sBufferingUpdateListener);
            gMediaPlayer.setDataSource(context.getApplicationContext(), uri, map);
            gUri = uri;
            gMediaPlayer.setAudioStreamType(3);
            gMediaPlayer.prepareAsync();
            gCurrentState = 1;
            gCurrentRenderingStart = false;
        } catch (Exception unused) {
            gCurrentState = -1;
            gCurrentRenderingStart = false;
        }
        return gMediaPlayer;
    }

    public static void release() {
        gUri = null;
        IMediaPlayer iMediaPlayer = gMediaPlayer;
        gMediaPlayer = null;
        gCurrentState = 0;
        gCurrentRenderingStart = false;
        Utils.handler.removeCallbacks(sRenderingStartBuffer);
        gVideoWidth = 0;
        gVideoHeight = 0;
        gCurrentBufferPercentage = 0;
        if (iMediaPlayer != null) {
            iMediaPlayer.setSurface(null);
            iMediaPlayer.release();
        }
    }

    static boolean isReleased(IMediaPlayer iMediaPlayer) {
        return iMediaPlayer != gMediaPlayer;
    }

    static void setAudioFocused(boolean z) {
        if (!z) {
            gMediaPlayer.setVolume(0.0f, 0.0f);
            AudioManager audioManager = gAudioManager;
            if (audioManager != null) {
                audioManager.abandonAudioFocus(null);
                return;
            }
            return;
        }
        gMediaPlayer.setVolume(1.0f, 1.0f);
        AudioManager audioManager2 = gAudioManager;
        if (audioManager2 != null) {
            audioManager2.requestAudioFocus(null, 3, 1);
        }
    }

    static int getAudioSession() {
        if (gAudioSession == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            gAudioSession = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return gAudioSession;
    }
}
