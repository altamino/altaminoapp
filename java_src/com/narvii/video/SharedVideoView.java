package com.narvii.video;

import android.content.Context;
import android.net.Uri;
import android.opengl.GLES20;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.MediaController;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.photos.PhotoManager;
import com.narvii.pushservice.PushNotificationService;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.YoutubeUtils;
import com.narvii.youtube.YoutubeLoggingStub;
import com.narvii.youtube.YoutubeService;
import com.narvii.youtube.YoutubeVideoCallback;
import com.narvii.youtube.YoutubeVideoList;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* loaded from: classes3.dex */
public class SharedVideoView extends SurfaceView implements MediaController.MediaPlayerControl, YoutubeVideoCallback {
    private static WeakReference<SharedVideoView> ACTIVE_VIEW = null;
    public static final int MEDIA_ERROR_FILE_NOT_EXISTS = 404;
    public static final int MEDIA_ERROR_YOUTUBE = 600;
    public static final int STATE_ERROR = -1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_PAUSED = 5;
    public static final int STATE_PLAYBACK_COMPLETED = 6;
    public static final int STATE_PLAYING = 4;
    public static final int STATE_PREPARED = 3;
    public static final int STATE_PREPARING = 1;
    public static final int STATE_YOUTUBE_LOADING = 2;
    static final String TAG = "videoplayer";
    static final boolean VERBOSE = NVApplication.DEBUG;
    private static int mSurfaceHolderCleanTimeout;
    private boolean isPaused;
    private IMediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
    private boolean mCanPause;
    private boolean mCanSeekBack;
    private boolean mCanSeekForward;
    private IMediaPlayer.OnCompletionListener mCompletionListener;
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private IMediaPlayer.OnErrorListener mErrorListener;
    private Map<String, String> mHeaders;
    private IMediaPlayer.OnInfoListener mInfoListener;
    private LoadVideoListener mLoadVideoListener;
    private MediaController mMediaController;
    private IMediaPlayer mMediaPlayer;
    private boolean mMute;
    private IMediaPlayer.OnCompletionListener mOnCompletionListener;
    private IMediaPlayer.OnErrorListener mOnErrorListener;
    private IMediaPlayer.OnInfoListener mOnInfoListener;
    private IMediaPlayer.OnPreparedListener mOnPreparedListener;
    IMediaPlayer.OnPreparedListener mPreparedListener;
    private boolean mRenderingStart;
    private String mRequestYoutubeVideoId;
    SurfaceHolder.Callback mSHCallback;
    private boolean mScreenOnWhilePlaying;
    private int mSeekWhenPrepared;
    IMediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
    private OnPlaybackStateChangedListener mStateChangedListener;
    private Uri mStreamUri;
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private boolean mSurfaceHolderDirty;
    private int mSurfaceWidth;
    private int mTargetState;
    private int mVideoHeight;
    private Uri mVideoUri;
    private int mVideoWidth;
    private YoutubeService mYoutubeService;
    private MediaPreloadService mediaPreloadService;
    private boolean mediaPreloadServiceInited;
    private long openVideoBeginTime;
    private PhotoManager photoManager;
    private final Runnable renderingStartBuffer;
    private YoutubeLoggingStub youtubeLoggingStub;

    public interface LoadVideoListener {
        void onBeignFetchUrl();

        void onBeignLoadVideo();
    }

    public interface OnPlaybackStateChangedListener {
        void onPlaybackStateChanged(SharedVideoView sharedVideoView, int i);
    }

    public SharedVideoView(Context context) {
        super(context);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mRenderingStart = false;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mSizeChangedListener = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.narvii.video.SharedVideoView.1
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i, int i2, int i3, int i4) {
                SharedVideoView.this.mVideoWidth = iMediaPlayer.getVideoWidth();
                SharedVideoView.this.mVideoHeight = iMediaPlayer.getVideoHeight();
                if (SharedVideoView.this.mSurfaceHolder == null || SharedVideoView.this.mVideoWidth == 0 || SharedVideoView.this.mVideoHeight == 0) {
                    return;
                }
                SharedVideoView.this.mSurfaceHolder.setFixedSize(SharedVideoView.this.mVideoWidth, SharedVideoView.this.mVideoHeight);
                SharedVideoView.this.requestLayout();
            }
        };
        this.mPreparedListener = new IMediaPlayer.OnPreparedListener() { // from class: com.narvii.video.SharedVideoView.2
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) throws IllegalStateException {
                String str;
                if (SharedVideoView.VERBOSE) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onPrepared(), mpState=");
                    sb.append(SharedVideoView.this.mCurrentState);
                    sb.append(", tState=");
                    sb.append(SharedVideoView.this.mTargetState);
                    sb.append(", surface=");
                    if (SharedVideoView.this.mSurfaceHolder != null) {
                        str = SharedVideoView.this.mSurfaceWidth + "x" + SharedVideoView.this.mSurfaceHeight;
                    } else {
                        str = PushNotificationService.NO_GROUP;
                    }
                    sb.append(str);
                    Log.d(SharedVideoView.TAG, sb.toString());
                }
                Log.d(SharedVideoView.TAG, "begin play video  " + SharedVideoView.this.mVideoUri + " with time spend " + (SystemClock.elapsedRealtime() - SharedVideoView.this.openVideoBeginTime));
                SharedVideoView.this.mCurrentState = 3;
                SharedVideoView sharedVideoView = SharedVideoView.this;
                sharedVideoView.mCanPause = sharedVideoView.mCanSeekBack = sharedVideoView.mCanSeekForward = true;
                if (SharedVideoView.this.mOnPreparedListener != null) {
                    SharedVideoView.this.mOnPreparedListener.onPrepared(SharedVideoView.this.mMediaPlayer);
                }
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.setEnabled(true);
                }
                SharedVideoView.this.mVideoWidth = iMediaPlayer.getVideoWidth();
                SharedVideoView.this.mVideoHeight = iMediaPlayer.getVideoHeight();
                int i = SharedVideoView.this.mSeekWhenPrepared;
                if (i != 0) {
                    SharedVideoView.this.seekTo(i);
                }
                boolean z = false;
                if (SharedVideoView.this.mSurfaceHolder == null || SharedVideoView.this.mVideoWidth == 0 || SharedVideoView.this.mVideoHeight == 0) {
                    if (SharedVideoView.this.mTargetState == 4) {
                        SharedVideoView.this.start();
                        z = true;
                    }
                } else {
                    SharedVideoView.this.mSurfaceHolder.setFixedSize(SharedVideoView.this.mVideoWidth, SharedVideoView.this.mVideoHeight);
                    if (SharedVideoView.this.mSurfaceWidth == SharedVideoView.this.mVideoWidth && SharedVideoView.this.mSurfaceHeight == SharedVideoView.this.mVideoHeight) {
                        if (SharedVideoView.this.mTargetState == 4) {
                            SharedVideoView.this.start();
                            if (SharedVideoView.this.mMediaController != null) {
                                SharedVideoView.this.mMediaController.show();
                            }
                            z = true;
                        } else if (!SharedVideoView.this.isPlaying() && ((i != 0 || SharedVideoView.this.getCurrentPosition() > 0) && SharedVideoView.this.mMediaController != null)) {
                            SharedVideoView.this.mMediaController.show(0);
                        }
                    }
                }
                SharedVideoView.this.mSurfaceHolderDirty = true;
                if (z || SharedVideoView.this.mStateChangedListener == null) {
                    return;
                }
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                SharedVideoView sharedVideoView2 = SharedVideoView.this;
                onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView2, sharedVideoView2.mCurrentState);
            }
        };
        this.mCompletionListener = new IMediaPlayer.OnCompletionListener() { // from class: com.narvii.video.SharedVideoView.3
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                SharedVideoView.this.mCurrentState = 6;
                SharedVideoView.this.mTargetState = 6;
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                if (SharedVideoView.this.mOnCompletionListener != null) {
                    SharedVideoView.this.mOnCompletionListener.onCompletion(SharedVideoView.this.mMediaPlayer);
                }
                if (SharedVideoView.this.mStateChangedListener != null) {
                    OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                    SharedVideoView sharedVideoView = SharedVideoView.this;
                    onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                }
            }
        };
        this.mInfoListener = new IMediaPlayer.OnInfoListener() { // from class: com.narvii.video.SharedVideoView.4
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i, int i2) {
                if (i == 702 && !SharedVideoView.this.mRenderingStart) {
                    Utils.postDelayed(SharedVideoView.this.renderingStartBuffer, 50L);
                } else if (i == 701) {
                    Utils.handler.removeCallbacks(SharedVideoView.this.renderingStartBuffer);
                } else if (SharedVideoView.this.mRenderingStart || i != 3) {
                    if (i == 1 && !SharedVideoView.this.mRenderingStart && Build.VERSION.SDK_INT < 16) {
                        Utils.handler.removeCallbacks(SharedVideoView.this.renderingStartBuffer);
                        Utils.postDelayed(SharedVideoView.this.renderingStartBuffer, 50L);
                    }
                } else {
                    SharedVideoView.this.mRenderingStart = true;
                    if (SharedVideoView.this.mStateChangedListener != null) {
                        OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                    }
                }
                if (SharedVideoView.this.mOnInfoListener != null) {
                    SharedVideoView.this.mOnInfoListener.onInfo(iMediaPlayer, i, i2);
                }
                return true;
            }
        };
        this.renderingStartBuffer = new Runnable() { // from class: com.narvii.video.SharedVideoView.5
            @Override // java.lang.Runnable
            public void run() {
                if (SharedVideoView.this.mRenderingStart || SharedVideoView.this.mMediaPlayer == null || SharedVideoView.this.mCurrentState != 4) {
                    return;
                }
                if (SharedVideoView.this.mMediaPlayer.getCurrentPosition() > 0) {
                    SharedVideoView.this.mRenderingStart = true;
                    if (SharedVideoView.this.mStateChangedListener != null) {
                        OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                        return;
                    }
                    return;
                }
                Utils.postDelayed(this, 50L);
            }
        };
        this.mErrorListener = new IMediaPlayer.OnErrorListener() { // from class: com.narvii.video.SharedVideoView.6
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i, int i2) {
                SharedVideoView.this.mCurrentState = -1;
                SharedVideoView.this.mTargetState = -1;
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                if (SharedVideoView.this.mOnErrorListener != null) {
                    SharedVideoView.this.mOnErrorListener.onError(SharedVideoView.this.mMediaPlayer, i, i2);
                }
                if (SharedVideoView.this.mStateChangedListener == null) {
                    return true;
                }
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                SharedVideoView sharedVideoView = SharedVideoView.this;
                onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                return true;
            }
        };
        this.mBufferingUpdateListener = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.narvii.video.SharedVideoView.7
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i) {
                SharedVideoView.this.mCurrentBufferPercentage = i;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: com.narvii.video.SharedVideoView.8
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) throws IllegalStateException {
                SharedVideoView.this.mSurfaceWidth = i2;
                SharedVideoView.this.mSurfaceHeight = i3;
                boolean z = SharedVideoView.this.mTargetState == 4;
                boolean z2 = SharedVideoView.this.mVideoWidth == i2 && SharedVideoView.this.mVideoHeight == i3;
                if (SharedVideoView.this.mMediaPlayer != null && z && z2) {
                    if (SharedVideoView.this.mSeekWhenPrepared != 0) {
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        sharedVideoView.seekTo(sharedVideoView.mSeekWhenPrepared);
                    }
                    SharedVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException {
                SharedVideoView.this.mSurfaceHolder = surfaceHolder;
                SharedVideoView.this.openVideo();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) throws IllegalStateException {
                SharedVideoView.this.mSurfaceHolder = null;
                SharedVideoView.this.detachMediaPlayer(false);
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                SharedVideoView.this.release(true);
            }
        };
        initVideoView();
    }

    public SharedVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        initVideoView();
    }

    public SharedVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mRenderingStart = false;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mSizeChangedListener = new IMediaPlayer.OnVideoSizeChangedListener() { // from class: com.narvii.video.SharedVideoView.1
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(IMediaPlayer iMediaPlayer, int i2, int i22, int i3, int i4) {
                SharedVideoView.this.mVideoWidth = iMediaPlayer.getVideoWidth();
                SharedVideoView.this.mVideoHeight = iMediaPlayer.getVideoHeight();
                if (SharedVideoView.this.mSurfaceHolder == null || SharedVideoView.this.mVideoWidth == 0 || SharedVideoView.this.mVideoHeight == 0) {
                    return;
                }
                SharedVideoView.this.mSurfaceHolder.setFixedSize(SharedVideoView.this.mVideoWidth, SharedVideoView.this.mVideoHeight);
                SharedVideoView.this.requestLayout();
            }
        };
        this.mPreparedListener = new IMediaPlayer.OnPreparedListener() { // from class: com.narvii.video.SharedVideoView.2
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnPreparedListener
            public void onPrepared(IMediaPlayer iMediaPlayer) throws IllegalStateException {
                String str;
                if (SharedVideoView.VERBOSE) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("onPrepared(), mpState=");
                    sb.append(SharedVideoView.this.mCurrentState);
                    sb.append(", tState=");
                    sb.append(SharedVideoView.this.mTargetState);
                    sb.append(", surface=");
                    if (SharedVideoView.this.mSurfaceHolder != null) {
                        str = SharedVideoView.this.mSurfaceWidth + "x" + SharedVideoView.this.mSurfaceHeight;
                    } else {
                        str = PushNotificationService.NO_GROUP;
                    }
                    sb.append(str);
                    Log.d(SharedVideoView.TAG, sb.toString());
                }
                Log.d(SharedVideoView.TAG, "begin play video  " + SharedVideoView.this.mVideoUri + " with time spend " + (SystemClock.elapsedRealtime() - SharedVideoView.this.openVideoBeginTime));
                SharedVideoView.this.mCurrentState = 3;
                SharedVideoView sharedVideoView = SharedVideoView.this;
                sharedVideoView.mCanPause = sharedVideoView.mCanSeekBack = sharedVideoView.mCanSeekForward = true;
                if (SharedVideoView.this.mOnPreparedListener != null) {
                    SharedVideoView.this.mOnPreparedListener.onPrepared(SharedVideoView.this.mMediaPlayer);
                }
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.setEnabled(true);
                }
                SharedVideoView.this.mVideoWidth = iMediaPlayer.getVideoWidth();
                SharedVideoView.this.mVideoHeight = iMediaPlayer.getVideoHeight();
                int i2 = SharedVideoView.this.mSeekWhenPrepared;
                if (i2 != 0) {
                    SharedVideoView.this.seekTo(i2);
                }
                boolean z = false;
                if (SharedVideoView.this.mSurfaceHolder == null || SharedVideoView.this.mVideoWidth == 0 || SharedVideoView.this.mVideoHeight == 0) {
                    if (SharedVideoView.this.mTargetState == 4) {
                        SharedVideoView.this.start();
                        z = true;
                    }
                } else {
                    SharedVideoView.this.mSurfaceHolder.setFixedSize(SharedVideoView.this.mVideoWidth, SharedVideoView.this.mVideoHeight);
                    if (SharedVideoView.this.mSurfaceWidth == SharedVideoView.this.mVideoWidth && SharedVideoView.this.mSurfaceHeight == SharedVideoView.this.mVideoHeight) {
                        if (SharedVideoView.this.mTargetState == 4) {
                            SharedVideoView.this.start();
                            if (SharedVideoView.this.mMediaController != null) {
                                SharedVideoView.this.mMediaController.show();
                            }
                            z = true;
                        } else if (!SharedVideoView.this.isPlaying() && ((i2 != 0 || SharedVideoView.this.getCurrentPosition() > 0) && SharedVideoView.this.mMediaController != null)) {
                            SharedVideoView.this.mMediaController.show(0);
                        }
                    }
                }
                SharedVideoView.this.mSurfaceHolderDirty = true;
                if (z || SharedVideoView.this.mStateChangedListener == null) {
                    return;
                }
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                SharedVideoView sharedVideoView2 = SharedVideoView.this;
                onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView2, sharedVideoView2.mCurrentState);
            }
        };
        this.mCompletionListener = new IMediaPlayer.OnCompletionListener() { // from class: com.narvii.video.SharedVideoView.3
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnCompletionListener
            public void onCompletion(IMediaPlayer iMediaPlayer) {
                SharedVideoView.this.mCurrentState = 6;
                SharedVideoView.this.mTargetState = 6;
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                if (SharedVideoView.this.mOnCompletionListener != null) {
                    SharedVideoView.this.mOnCompletionListener.onCompletion(SharedVideoView.this.mMediaPlayer);
                }
                if (SharedVideoView.this.mStateChangedListener != null) {
                    OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                    SharedVideoView sharedVideoView = SharedVideoView.this;
                    onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                }
            }
        };
        this.mInfoListener = new IMediaPlayer.OnInfoListener() { // from class: com.narvii.video.SharedVideoView.4
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnInfoListener
            public boolean onInfo(IMediaPlayer iMediaPlayer, int i2, int i22) {
                if (i2 == 702 && !SharedVideoView.this.mRenderingStart) {
                    Utils.postDelayed(SharedVideoView.this.renderingStartBuffer, 50L);
                } else if (i2 == 701) {
                    Utils.handler.removeCallbacks(SharedVideoView.this.renderingStartBuffer);
                } else if (SharedVideoView.this.mRenderingStart || i2 != 3) {
                    if (i2 == 1 && !SharedVideoView.this.mRenderingStart && Build.VERSION.SDK_INT < 16) {
                        Utils.handler.removeCallbacks(SharedVideoView.this.renderingStartBuffer);
                        Utils.postDelayed(SharedVideoView.this.renderingStartBuffer, 50L);
                    }
                } else {
                    SharedVideoView.this.mRenderingStart = true;
                    if (SharedVideoView.this.mStateChangedListener != null) {
                        OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                    }
                }
                if (SharedVideoView.this.mOnInfoListener != null) {
                    SharedVideoView.this.mOnInfoListener.onInfo(iMediaPlayer, i2, i22);
                }
                return true;
            }
        };
        this.renderingStartBuffer = new Runnable() { // from class: com.narvii.video.SharedVideoView.5
            @Override // java.lang.Runnable
            public void run() {
                if (SharedVideoView.this.mRenderingStart || SharedVideoView.this.mMediaPlayer == null || SharedVideoView.this.mCurrentState != 4) {
                    return;
                }
                if (SharedVideoView.this.mMediaPlayer.getCurrentPosition() > 0) {
                    SharedVideoView.this.mRenderingStart = true;
                    if (SharedVideoView.this.mStateChangedListener != null) {
                        OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                        return;
                    }
                    return;
                }
                Utils.postDelayed(this, 50L);
            }
        };
        this.mErrorListener = new IMediaPlayer.OnErrorListener() { // from class: com.narvii.video.SharedVideoView.6
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnErrorListener
            public boolean onError(IMediaPlayer iMediaPlayer, int i2, int i22) {
                SharedVideoView.this.mCurrentState = -1;
                SharedVideoView.this.mTargetState = -1;
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                if (SharedVideoView.this.mOnErrorListener != null) {
                    SharedVideoView.this.mOnErrorListener.onError(SharedVideoView.this.mMediaPlayer, i2, i22);
                }
                if (SharedVideoView.this.mStateChangedListener == null) {
                    return true;
                }
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = SharedVideoView.this.mStateChangedListener;
                SharedVideoView sharedVideoView = SharedVideoView.this;
                onPlaybackStateChangedListener.onPlaybackStateChanged(sharedVideoView, sharedVideoView.mCurrentState);
                return true;
            }
        };
        this.mBufferingUpdateListener = new IMediaPlayer.OnBufferingUpdateListener() { // from class: com.narvii.video.SharedVideoView.7
            @Override // tv.danmaku.ijk.media.player.IMediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(IMediaPlayer iMediaPlayer, int i2) {
                SharedVideoView.this.mCurrentBufferPercentage = i2;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: com.narvii.video.SharedVideoView.8
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i22, int i3) throws IllegalStateException {
                SharedVideoView.this.mSurfaceWidth = i22;
                SharedVideoView.this.mSurfaceHeight = i3;
                boolean z = SharedVideoView.this.mTargetState == 4;
                boolean z2 = SharedVideoView.this.mVideoWidth == i22 && SharedVideoView.this.mVideoHeight == i3;
                if (SharedVideoView.this.mMediaPlayer != null && z && z2) {
                    if (SharedVideoView.this.mSeekWhenPrepared != 0) {
                        SharedVideoView sharedVideoView = SharedVideoView.this;
                        sharedVideoView.seekTo(sharedVideoView.mSeekWhenPrepared);
                    }
                    SharedVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) throws IllegalStateException {
                SharedVideoView.this.mSurfaceHolder = surfaceHolder;
                SharedVideoView.this.openVideo();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) throws IllegalStateException {
                SharedVideoView.this.mSurfaceHolder = null;
                SharedVideoView.this.detachMediaPlayer(false);
                if (SharedVideoView.this.mMediaController != null) {
                    SharedVideoView.this.mMediaController.hide();
                }
                SharedVideoView.this.release(true);
            }
        };
        initVideoView();
    }

    public void setOnPlaybackStateChangedListener(OnPlaybackStateChangedListener onPlaybackStateChangedListener) {
        this.mStateChangedListener = onPlaybackStateChangedListener;
    }

    public void setLoadVideoListener(LoadVideoListener loadVideoListener) {
        this.mLoadVideoListener = loadVideoListener;
    }

    public void removeLoadVideoListener(LoadVideoListener loadVideoListener) {
        if (this.mLoadVideoListener == loadVideoListener) {
            this.mLoadVideoListener = null;
        }
    }

    public boolean isMute() {
        return this.mMute;
    }

    public void setMute(boolean z) {
        this.mMute = z;
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.setVolume(z ? 0.0f : 1.0f, z ? 0.0f : 1.0f);
            if (this.mCurrentState == 4) {
                SharedMediaPlayer.setAudioFocused(!z);
            }
        }
    }

    public boolean isScreenOnWhilePlaying() {
        return this.mScreenOnWhilePlaying;
    }

    public void setScreenOnWhilePlaying(boolean z) {
        this.mScreenOnWhilePlaying = z;
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.setScreenOnWhilePlaying(z);
        }
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public int getTargetState() {
        return this.mTargetState;
    }

    public boolean isRenderingStart() {
        return this.mRenderingStart;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int defaultSize = SurfaceView.getDefaultSize(this.mVideoWidth, i);
        int defaultSize2 = SurfaceView.getDefaultSize(this.mVideoHeight, i2);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i4 = this.mVideoWidth;
                int i5 = i4 * size2;
                int i6 = this.mVideoHeight;
                if (i5 < size * i6) {
                    defaultSize = (i4 * size2) / i6;
                    defaultSize2 = size2;
                } else {
                    if (i4 * size2 > size * i6) {
                        i3 = (i6 * size) / i4;
                        defaultSize = size;
                        defaultSize2 = i3;
                    }
                    defaultSize2 = size2;
                }
            } else {
                if (mode == 1073741824) {
                    int i7 = (this.mVideoHeight * size) / this.mVideoWidth;
                    if (mode2 != Integer.MIN_VALUE || i7 <= size2) {
                        defaultSize2 = i7;
                        defaultSize = size;
                    }
                } else if (mode2 == 1073741824) {
                    int i8 = (this.mVideoWidth * size2) / this.mVideoHeight;
                    defaultSize = (mode != Integer.MIN_VALUE || i8 <= size) ? i8 : size;
                } else if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE && size > 0 && size2 > 0) {
                    int i9 = this.mVideoWidth;
                    int i10 = i9 * size2;
                    int i11 = this.mVideoHeight;
                    if (i10 > i11 * size) {
                        i3 = (i11 * size) / i9;
                        defaultSize = size;
                        defaultSize2 = i3;
                    } else {
                        defaultSize = (i9 * size2) / i11;
                    }
                } else {
                    int i12 = this.mVideoWidth;
                    int i13 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i13 <= size2) {
                        size2 = i13;
                    } else {
                        i12 = (i12 * size2) / i13;
                    }
                    if (mode != Integer.MIN_VALUE || i12 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i12;
                    } else {
                        size2 = (this.mVideoHeight * size) / this.mVideoWidth;
                    }
                }
                defaultSize2 = size2;
            }
        } else {
            int mode3 = View.MeasureSpec.getMode(i);
            int mode4 = View.MeasureSpec.getMode(i2);
            if (mode3 == 1073741824 && mode4 != 1073741824) {
                defaultSize2 = (defaultSize * 9) / 16;
                if (mode4 == Integer.MIN_VALUE) {
                    defaultSize2 = Math.min(defaultSize2, View.MeasureSpec.getSize(i2));
                }
            } else if (mode3 != 1073741824 && mode4 == 1073741824) {
                defaultSize = (defaultSize2 * 16) / 9;
                if (mode3 == Integer.MIN_VALUE) {
                    defaultSize = Math.min(defaultSize, View.MeasureSpec.getSize(i));
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(SharedVideoView.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(SharedVideoView.class.getName());
    }

    private void initVideoView() {
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        getHolder().addCallback(this.mSHCallback);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.mCurrentState = 0;
        this.mTargetState = 0;
    }

    public void setVideoPath(String str) throws IllegalStateException {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) throws IllegalStateException {
        setVideoURI(uri, null, null);
    }

    public void setVideoURI(Uri uri, YoutubeLoggingStub youtubeLoggingStub) throws IllegalStateException {
        setVideoURI(uri, youtubeLoggingStub, null);
    }

    public void setVideoURI(Uri uri, YoutubeLoggingStub youtubeLoggingStub, Map<String, String> map) throws IllegalStateException {
        if (!Utils.isEqualsNotNull(this.mVideoUri, uri)) {
            this.mStreamUri = null;
        }
        String str = this.mRequestYoutubeVideoId;
        if (str != null && !str.equals(YoutubeUtils.getYoutubeVideoIdFromUrl(String.valueOf(uri)))) {
            getYoutubeService().abort(this.mRequestYoutubeVideoId, this);
            this.mRequestYoutubeVideoId = null;
            this.mStreamUri = null;
        }
        this.mVideoUri = uri;
        this.youtubeLoggingStub = youtubeLoggingStub;
        this.mHeaders = map;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public Uri getVideoURI() {
        return this.mVideoUri;
    }

    public Uri getStreamURI() {
        return this.mStreamUri;
    }

    public void stopPlayback() throws IllegalStateException {
        if (this.mMediaPlayer != null) {
            detachMediaPlayer(false);
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
            OnPlaybackStateChangedListener onPlaybackStateChangedListener = this.mStateChangedListener;
            if (onPlaybackStateChangedListener != null) {
                onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openVideo() throws IllegalStateException {
        MediaPreloadService mediaPreloadService;
        boolean z;
        OnPlaybackStateChangedListener onPlaybackStateChangedListener;
        String str;
        Uri uri = this.mVideoUri;
        if (uri == null) {
            detachMediaPlayer(false);
            return;
        }
        String youtubeVideoIdFromUrl = YoutubeUtils.getYoutubeVideoIdFromUrl(uri.toString());
        if (this.mStreamUri == null) {
            if (youtubeVideoIdFromUrl == null) {
                if ("photo".equals(this.mVideoUri.getScheme())) {
                    File path = getPhotoManager().getPath(this.mVideoUri.toString());
                    if (path.length() > 0) {
                        this.mStreamUri = Uri.fromFile(path);
                    } else {
                        detachMediaPlayer(false);
                        this.mCurrentState = -1;
                        OnPlaybackStateChangedListener onPlaybackStateChangedListener2 = this.mStateChangedListener;
                        if (onPlaybackStateChangedListener2 != null) {
                            onPlaybackStateChangedListener2.onPlaybackStateChanged(this, this.mCurrentState);
                        }
                        IMediaPlayer.OnErrorListener onErrorListener = this.mOnErrorListener;
                        if (onErrorListener != null) {
                            onErrorListener.onError(null, MEDIA_ERROR_FILE_NOT_EXISTS, 0);
                            return;
                        }
                        return;
                    }
                } else {
                    this.mStreamUri = this.mVideoUri;
                }
            } else {
                if (getYoutubeService() == null) {
                    detachMediaPlayer(false);
                    this.mCurrentState = -1;
                    OnPlaybackStateChangedListener onPlaybackStateChangedListener3 = this.mStateChangedListener;
                    if (onPlaybackStateChangedListener3 != null) {
                        onPlaybackStateChangedListener3.onPlaybackStateChanged(this, this.mCurrentState);
                    }
                    IMediaPlayer.OnErrorListener onErrorListener2 = this.mOnErrorListener;
                    if (onErrorListener2 != null) {
                        onErrorListener2.onError(null, 600, 0);
                        return;
                    }
                    return;
                }
                if (!youtubeVideoIdFromUrl.equals(this.mRequestYoutubeVideoId)) {
                    this.mRequestYoutubeVideoId = youtubeVideoIdFromUrl;
                    getYoutubeService().exec(youtubeVideoIdFromUrl, this.youtubeLoggingStub, this);
                }
                if (this.mStreamUri == null) {
                    boolean z2 = this.mCurrentState == -1;
                    detachMediaPlayer(false);
                    if (z2) {
                        return;
                    }
                    this.mCurrentState = 2;
                    OnPlaybackStateChangedListener onPlaybackStateChangedListener4 = this.mStateChangedListener;
                    if (onPlaybackStateChangedListener4 != null) {
                        onPlaybackStateChangedListener4.onPlaybackStateChanged(this, this.mCurrentState);
                    }
                    LoadVideoListener loadVideoListener = this.mLoadVideoListener;
                    if (loadVideoListener != null) {
                        loadVideoListener.onBeignFetchUrl();
                        return;
                    }
                    return;
                }
                return;
            }
        }
        Uri uri2 = this.mStreamUri;
        if (youtubeVideoIdFromUrl != null) {
            MediaPreloadService mediaPreloadService2 = getMediaPreloadService();
            if (mediaPreloadService2 != null) {
                uri2 = Uri.parse(mediaPreloadService2.translateUrl(youtubeVideoIdFromUrl, this.mStreamUri.toString()));
            }
        } else if (("http".equals(uri2.getScheme()) || "https".equals(this.mStreamUri.getScheme())) && (mediaPreloadService = getMediaPreloadService()) != null) {
            uri2 = Uri.parse(mediaPreloadService.translateUrl(String.valueOf(Math.abs(this.mStreamUri.toString().hashCode())), this.mStreamUri.toString()));
        }
        IMediaPlayer mediaPlayer = SharedMediaPlayer.getMediaPlayer(getContext(), uri2, this.mHeaders);
        if (VERBOSE) {
            StringBuilder sb = new StringBuilder();
            sb.append("openVideo(), mpState=");
            sb.append(SharedMediaPlayer.gCurrentState);
            sb.append(", tState=");
            sb.append(this.mTargetState);
            sb.append(", surface=");
            if (this.mSurfaceHolder != null) {
                str = this.mSurfaceWidth + "x" + this.mSurfaceHeight;
            } else {
                str = PushNotificationService.NO_GROUP;
            }
            sb.append(str);
            Log.d(TAG, sb.toString());
        }
        LoadVideoListener loadVideoListener2 = this.mLoadVideoListener;
        if (loadVideoListener2 != null) {
            loadVideoListener2.onBeignLoadVideo();
        }
        this.openVideoBeginTime = SystemClock.elapsedRealtime();
        if (mediaPlayer != this.mMediaPlayer) {
            detachMediaPlayer(false);
            mediaPlayer.setVolume(this.mMute ? 0.0f : 1.0f, this.mMute ? 0.0f : 1.0f);
        }
        WeakReference<SharedVideoView> weakReference = ACTIVE_VIEW;
        if (weakReference != null) {
            SharedVideoView sharedVideoView = weakReference.get();
            ACTIVE_VIEW = null;
            if (sharedVideoView != null && sharedVideoView != this) {
                sharedVideoView.detachMediaPlayer(true);
            }
        }
        this.mMediaPlayer = mediaPlayer;
        mediaPlayer.setScreenOnWhilePlaying(this.mScreenOnWhilePlaying);
        ACTIVE_VIEW = new WeakReference<>(this);
        SharedMediaPlayer.gPreparedListener = this.mPreparedListener;
        SharedMediaPlayer.gVideoSizeChangedListener = this.mSizeChangedListener;
        SharedMediaPlayer.gCompletionListener = this.mCompletionListener;
        SharedMediaPlayer.gErrorListener = this.mErrorListener;
        SharedMediaPlayer.gInfoListener = this.mInfoListener;
        SharedMediaPlayer.gBufferingUpdateListener = this.mBufferingUpdateListener;
        this.mCurrentBufferPercentage = SharedMediaPlayer.gCurrentBufferPercentage;
        this.mRenderingStart = SharedMediaPlayer.gCurrentRenderingStart;
        int i = this.mCurrentState;
        if (i <= 3 || i != SharedMediaPlayer.gCurrentState) {
            this.mCurrentState = SharedMediaPlayer.gCurrentState;
            SurfaceHolder surfaceHolder = this.mSurfaceHolder;
            if (surfaceHolder != null) {
                if (this.mSurfaceHolderDirty) {
                    try {
                        clearSurface(surfaceHolder.getSurface());
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    this.mSurfaceHolderDirty = false;
                }
                this.mMediaPlayer.setDisplay(this.mSurfaceHolder);
                attachMediaController();
                if (SharedMediaPlayer.gCurrentState >= 3) {
                    this.mPreparedListener.onPrepared(mediaPlayer);
                    this.mCurrentState = Math.max(3, this.mCurrentState);
                    z = true;
                } else {
                    z = false;
                }
                int i2 = this.mCurrentState;
                if (i2 == -1) {
                    this.mTargetState = -1;
                    this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
                } else if (this.mTargetState == 4 && i2 != 4 && i2 >= 3) {
                    start();
                    z = true;
                }
            } else {
                z = false;
            }
            this.mRenderingStart = SharedMediaPlayer.gCurrentRenderingStart;
            if (z || (onPlaybackStateChangedListener = this.mStateChangedListener) == null) {
                return;
            }
            onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void detachMediaPlayer(boolean z) throws IllegalStateException {
        if (this.mMediaPlayer != null) {
            if (VERBOSE) {
                Log.d(TAG, "detachMediaPlayer()");
            }
            if (!SharedMediaPlayer.isReleased(this.mMediaPlayer)) {
                if (!z && this.mCurrentState == 4) {
                    this.mMediaPlayer.pause();
                }
                this.mMediaPlayer.setDisplay(null);
            }
            SharedMediaPlayer.gPreparedListener = null;
            SharedMediaPlayer.gErrorListener = null;
            SharedMediaPlayer.gCompletionListener = null;
            SharedMediaPlayer.gInfoListener = null;
            SharedMediaPlayer.gBufferingUpdateListener = null;
            SharedMediaPlayer.gVideoSizeChangedListener = null;
        }
        this.mMediaPlayer = null;
        if (z) {
            if (this.mCurrentState > 1) {
                this.mCurrentState = 1;
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = this.mStateChangedListener;
                if (onPlaybackStateChangedListener != null) {
                    onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
                }
            }
        } else if (this.mCurrentState != 0) {
            this.mCurrentState = 0;
            OnPlaybackStateChangedListener onPlaybackStateChangedListener2 = this.mStateChangedListener;
            if (onPlaybackStateChangedListener2 != null) {
                onPlaybackStateChangedListener2.onPlaybackStateChanged(this, this.mCurrentState);
            }
        }
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        WeakReference<SharedVideoView> weakReference = ACTIVE_VIEW;
        if (weakReference == null || weakReference.get() != this) {
            return;
        }
        ACTIVE_VIEW = null;
    }

    private void clearSurface(Surface surface) {
        int i;
        if (Build.VERSION.SDK_INT < 23 || mSurfaceHolderCleanTimeout > 1) {
            return;
        }
        long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        egl10.eglInitialize(eGLDisplayEglGetDisplay, null);
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        egl10.eglChooseConfig(eGLDisplayEglGetDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12344, 0, 12344}, eGLConfigArr, eGLConfigArr.length, new int[1]);
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLContext eGLContextEglCreateContext = egl10.eglCreateContext(eGLDisplayEglGetDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, new int[]{12440, 2, 12344});
        EGLSurface eGLSurfaceEglCreateWindowSurface = egl10.eglCreateWindowSurface(eGLDisplayEglGetDisplay, eGLConfig, surface, new int[]{12344});
        egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface, eGLSurfaceEglCreateWindowSurface, eGLContextEglCreateContext);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        GLES20.glClear(16384);
        egl10.eglSwapBuffers(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface);
        egl10.eglDestroySurface(eGLDisplayEglGetDisplay, eGLSurfaceEglCreateWindowSurface);
        EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
        egl10.eglMakeCurrent(eGLDisplayEglGetDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        egl10.eglDestroyContext(eGLDisplayEglGetDisplay, eGLContextEglCreateContext);
        egl10.eglTerminate(eGLDisplayEglGetDisplay);
        long jCurrentThreadTimeMillis2 = SystemClock.currentThreadTimeMillis() - jCurrentThreadTimeMillis;
        if (jCurrentThreadTimeMillis2 > 30) {
            mSurfaceHolderCleanTimeout++;
        } else {
            if (jCurrentThreadTimeMillis2 >= 15 || (i = mSurfaceHolderCleanTimeout) <= 0) {
                return;
            }
            mSurfaceHolderCleanTimeout = i - 1;
        }
    }

    public void setMediaController(MediaController mediaController) {
        MediaController mediaController2 = this.mMediaController;
        if (mediaController2 != null) {
            mediaController2.hide();
        }
        this.mMediaController = mediaController;
        attachMediaController();
    }

    private void attachMediaController() {
        MediaController mediaController;
        if (this.mMediaPlayer == null || (mediaController = this.mMediaController) == null) {
            return;
        }
        mediaController.setMediaPlayer(this);
        this.mMediaController.setAnchorView(getParent() instanceof View ? (View) getParent() : this);
        this.mMediaController.setEnabled(isInPlaybackState());
    }

    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(IMediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z) {
        IMediaPlayer iMediaPlayer = this.mMediaPlayer;
        if (iMediaPlayer != null) {
            iMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z) {
                this.mTargetState = 0;
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isInPlaybackState() || this.mMediaController == null) {
            return false;
        }
        toggleMediaControlsVisiblity();
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!isInPlaybackState() || this.mMediaController == null) {
            return false;
        }
        toggleMediaControlsVisiblity();
        return false;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) throws IllegalStateException {
        boolean z = (i == 4 || i == 24 || i == 25 || i == 164 || i == 82 || i == 5 || i == 6) ? false : true;
        if (isInPlaybackState() && z && this.mMediaController != null) {
            if (i == 79 || i == 85) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                } else {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i == 126) {
                if (!this.mMediaPlayer.isPlaying()) {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i == 86 || i == 127) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                }
                return true;
            }
            toggleMediaControlsVisiblity();
        }
        return super.onKeyDown(i, keyEvent);
    }

    private void toggleMediaControlsVisiblity() {
        if (this.mMediaController.isShowing()) {
            this.mMediaController.hide();
        } else {
            this.mMediaController.show();
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void start() throws IllegalStateException {
        if (VERBOSE) {
            Log.d(TAG, "start(), isInPlaybackState=" + isInPlaybackState());
        }
        if (isInPlaybackState()) {
            this.mMediaPlayer.start();
            this.mMediaPlayer.setLooping(true);
            if (this.mCurrentState != 4) {
                this.mCurrentState = 4;
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = this.mStateChangedListener;
                if (onPlaybackStateChangedListener != null) {
                    onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
                }
            }
            if (this.mMute) {
                this.mMediaPlayer.setVolume(0.0f, 0.0f);
            } else {
                this.mMediaPlayer.setVolume(1.0f, 1.0f);
                SharedMediaPlayer.setAudioFocused(true);
            }
        }
        this.mTargetState = 4;
    }

    public void setPaused(boolean z) {
        this.isPaused = z;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void pause() throws IllegalStateException {
        if (VERBOSE) {
            Log.d(TAG, "pause(), isInPlaybackState=" + isInPlaybackState());
        }
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            if (this.mCurrentState != 5) {
                this.mCurrentState = 5;
                OnPlaybackStateChangedListener onPlaybackStateChangedListener = this.mStateChangedListener;
                if (onPlaybackStateChangedListener != null) {
                    onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
                }
            }
        }
        this.mTargetState = 5;
    }

    public float getProgress() {
        if (getDuration() == 0) {
            return 0.0f;
        }
        return (getCurrentPosition() * 1.0f) / getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getDuration() {
        if (isInPlaybackState()) {
            return (int) this.mMediaPlayer.getDuration();
        }
        return -1;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getCurrentPosition() {
        if (isInPlaybackState()) {
            return (int) this.mMediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public void seekTo(int i) throws IllegalStateException {
        if (isInPlaybackState()) {
            this.mMediaPlayer.seekTo(i);
            this.mSeekWhenPrepared = 0;
        } else {
            this.mSeekWhenPrepared = i;
        }
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean isPlaying() {
        return isInPlaybackState() && this.mMediaPlayer.isPlaying();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    private boolean isInPlaybackState() {
        int i;
        return (this.mMediaPlayer == null || (i = this.mCurrentState) == -1 || i == 0 || i == 1) ? false : true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canPause() {
        return this.mCanPause;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.mCanSeekBack;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public boolean canSeekForward() {
        return this.mCanSeekForward;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public int getAudioSessionId() {
        return SharedMediaPlayer.getAudioSession();
    }

    public int getVideoWidth() {
        return this.mVideoWidth;
    }

    public int getVideoHeight() {
        return this.mVideoHeight;
    }

    private PhotoManager getPhotoManager() {
        NVContext nVContext;
        if (this.photoManager == null && (nVContext = Utils.getNVContext(getContext())) != null) {
            this.photoManager = (PhotoManager) nVContext.getService("photo");
        }
        return this.photoManager;
    }

    private MediaPreloadService getMediaPreloadService() {
        if (this.mediaPreloadServiceInited) {
            return this.mediaPreloadService;
        }
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext == null) {
            this.mediaPreloadService = null;
        } else {
            this.mediaPreloadService = (MediaPreloadService) nVContext.getService("mediapreload");
            this.mediaPreloadServiceInited = true;
        }
        return this.mediaPreloadService;
    }

    private YoutubeService getYoutubeService() {
        YoutubeService youtubeService = this.mYoutubeService;
        if (youtubeService != null) {
            return youtubeService;
        }
        NVContext nVContext = Utils.getNVContext(getContext());
        if (nVContext == null) {
            return null;
        }
        YoutubeService youtubeService2 = (YoutubeService) nVContext.getService(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE);
        this.mYoutubeService = youtubeService2;
        return youtubeService2;
    }

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFinish(String str, YoutubeVideoList youtubeVideoList) throws IllegalStateException {
        if (str.equals(this.mRequestYoutubeVideoId)) {
            String url = youtubeVideoList.getUrl();
            if (VERBOSE) {
                Log.i(TAG, "youtube finish: " + url);
            }
            this.mRequestYoutubeVideoId = null;
            this.mStreamUri = Uri.parse(url);
            if (this.isPaused) {
                return;
            }
            openVideo();
        }
    }

    @Override // com.narvii.youtube.YoutubeVideoCallback
    public void onFail(String str, int i, String str2) {
        if (str.equals(this.mRequestYoutubeVideoId)) {
            if (VERBOSE) {
                Log.i(TAG, "youtube fail: " + i + ", " + str2);
            }
            this.mRequestYoutubeVideoId = null;
            this.mCurrentState = -1;
            OnPlaybackStateChangedListener onPlaybackStateChangedListener = this.mStateChangedListener;
            if (onPlaybackStateChangedListener != null) {
                onPlaybackStateChangedListener.onPlaybackStateChanged(this, this.mCurrentState);
            }
            IMediaPlayer.OnErrorListener onErrorListener = this.mOnErrorListener;
            if (onErrorListener != null) {
                onErrorListener.onError(null, 600, i);
            }
        }
    }
}
