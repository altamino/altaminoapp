package com.narvii.chat.screenroom.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.net.Uri;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.widget.VideoView;
import com.narvii.chat.screenroom.MediaPlayerControl;
import com.narvii.util.Utils;
import com.narvii.video.gles.FullFrameRect;
import com.narvii.video.gles.GlUtil;
import com.narvii.video.gles.Texture2dProgram;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.opengles.GL10;
import net.protyposis.android.mediaplayer.MediaPlayer;

/* loaded from: classes2.dex */
public class GLVideoView extends GLSurfaceView implements MediaPlayerControl {
    private static final int STATE_ERROR = -1;
    private static final int STATE_IDLE = 0;
    private static final int STATE_PAUSED = 4;
    private static final int STATE_PLAYBACK_COMPLETED = 5;
    private static final int STATE_PLAYING = 3;
    private static final int STATE_PREPARED = 2;
    private static final int STATE_PREPARING = 1;
    private static final String TAG = "GLVideoView";
    AtomicBoolean clearSurfaceView;
    final Handler exceptionHandler;
    boolean isSurfaceCreated;
    boolean isSurfaceInited;
    private boolean isViewPortSet;
    private int mAudioSession;
    private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener;
    private boolean mCanPause;
    private boolean mCanSeekBack;
    private boolean mCanSeekForward;
    private MediaPlayer.OnCompletionListener mCompletionListener;
    private Context mContext;
    private int mCurrentBufferPercentage;
    private int mCurrentState;
    private MediaPlayer.OnErrorListener mErrorListener;
    private Map<String, String> mHeaders;
    private MediaPlayer.OnInfoListener mInfoListener;
    private VideoController mMediaController;
    private MediaPlayer mMediaPlayer;
    private MediaPlayer.OnCompletionListener mOnCompletionListener;
    private MediaPlayer.OnErrorListener mOnErrorListener;
    private MediaPlayer.OnInfoListener mOnInfoListener;
    private MediaPlayer.OnPreparedListener mOnPreparedListener;
    private MediaPlayer.OnVideoSizeChangedListener mOnVideoSizeChangeListener;
    MediaPlayer.OnPreparedListener mPreparedListener;
    SurfaceHolder.Callback mSHCallback;
    private int mSeekWhenPrepared;
    MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener;
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private int mSurfaceWidth;
    private int mTargetState;
    private Uri mUri;
    private int mVideoHeight;
    private int mVideoWidth;
    private float mVolume;
    MediaFrameAvailableListener mediaFrameAvailableListener;
    MediaPlayer.OnSeekCompleteListener onSeekCompleteListener;
    MediaPlayer.OnSeekListener onSeekListener;
    private VideoRenderer videoRender;

    public interface MediaFrameAvailableListener {
        void onAudioFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4);

        void onVideoFrameAvailable(int i, int i2, EGLContext eGLContext, int i3, int i4, float[] fArr);
    }

    public void setVideoFrameAvailableListener(MediaFrameAvailableListener mediaFrameAvailableListener) {
        this.mediaFrameAvailableListener = mediaFrameAvailableListener;
    }

    public GLVideoView(Context context) {
        this(context, null);
    }

    public GLVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurrentState = 0;
        this.mTargetState = 0;
        this.mSurfaceHolder = null;
        this.mMediaPlayer = null;
        this.mVolume = 1.0f;
        this.isViewPortSet = false;
        this.isSurfaceInited = false;
        this.isSurfaceCreated = false;
        this.clearSurfaceView = new AtomicBoolean();
        this.exceptionHandler = new Handler(new Handler.Callback() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                GLVideoView.this.mCurrentState = -1;
                GLVideoView.this.mTargetState = -1;
                GLVideoView.this.mErrorListener.onError(GLVideoView.this.mMediaPlayer, 1, 0);
                return true;
            }
        });
        this.mSizeChangedListener = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.4
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnVideoSizeChangedListener
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                GLVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                GLVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                if (GLVideoView.this.mOnVideoSizeChangeListener != null) {
                    GLVideoView.this.mOnVideoSizeChangeListener.onVideoSizeChanged(mediaPlayer, i, i2);
                }
                if (GLVideoView.this.mVideoWidth == 0 || GLVideoView.this.mVideoHeight == 0) {
                    return;
                }
                GLVideoView.this.getHolder().setFixedSize(GLVideoView.this.mVideoWidth, GLVideoView.this.mVideoHeight);
                GLVideoView.this.requestLayout();
            }
        };
        this.mPreparedListener = new MediaPlayer.OnPreparedListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.5
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnPreparedListener
            public void onPrepared(MediaPlayer mediaPlayer) {
                GLVideoView.this.mCurrentState = 2;
                GLVideoView gLVideoView = GLVideoView.this;
                gLVideoView.mCanPause = gLVideoView.mCanSeekBack = gLVideoView.mCanSeekForward = true;
                if (GLVideoView.this.mOnPreparedListener != null) {
                    GLVideoView.this.mOnPreparedListener.onPrepared(GLVideoView.this.mMediaPlayer);
                }
                if (GLVideoView.this.mMediaController != null) {
                    GLVideoView.this.mMediaController.setEnabled(true);
                }
                GLVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                GLVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i = GLVideoView.this.mSeekWhenPrepared;
                if (i != 0) {
                    GLVideoView.this.seekTo(i);
                }
                if (GLVideoView.this.mVideoWidth == 0 || GLVideoView.this.mVideoHeight == 0) {
                    if (GLVideoView.this.mTargetState == 3) {
                        GLVideoView.this.start();
                        if (GLVideoView.this.mMediaController != null) {
                            GLVideoView.this.mMediaController.show();
                            return;
                        }
                        return;
                    }
                    return;
                }
                GLVideoView.this.getHolder().setFixedSize(GLVideoView.this.mVideoWidth, GLVideoView.this.mVideoHeight);
                if (GLVideoView.this.mSurfaceWidth == GLVideoView.this.mVideoWidth && GLVideoView.this.mSurfaceHeight == GLVideoView.this.mVideoHeight) {
                    if (GLVideoView.this.mTargetState == 3) {
                        GLVideoView.this.start();
                        if (GLVideoView.this.mMediaController != null) {
                            GLVideoView.this.mMediaController.show();
                            return;
                        }
                        return;
                    }
                    if (GLVideoView.this.isPlaying()) {
                        return;
                    }
                    if ((i != 0 || GLVideoView.this.getCurrentPosition() > 0) && GLVideoView.this.mMediaController != null) {
                        GLVideoView.this.mMediaController.show(0);
                    }
                }
            }
        };
        this.mCompletionListener = new MediaPlayer.OnCompletionListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.6
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                GLVideoView.this.mCurrentState = 5;
                GLVideoView.this.mTargetState = 5;
                if (GLVideoView.this.mOnCompletionListener != null) {
                    GLVideoView.this.mOnCompletionListener.onCompletion(GLVideoView.this.mMediaPlayer);
                }
            }
        };
        this.mInfoListener = new MediaPlayer.OnInfoListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.7
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnInfoListener
            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                if (GLVideoView.this.mOnInfoListener == null) {
                    return true;
                }
                GLVideoView.this.mOnInfoListener.onInfo(mediaPlayer, i, i2);
                return true;
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.8
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                Log.d(GLVideoView.TAG, "Error: " + i + "," + i2);
                GLVideoView.this.mCurrentState = -1;
                GLVideoView.this.mTargetState = -1;
                if (GLVideoView.this.mMediaController != null) {
                    GLVideoView.this.mMediaController.hide();
                }
                if ((GLVideoView.this.mOnErrorListener == null || !GLVideoView.this.mOnErrorListener.onError(GLVideoView.this.mMediaPlayer, i, i2)) && GLVideoView.this.getWindowToken() != null) {
                    GLVideoView.this.mContext.getResources();
                    if (GLVideoView.this.mOnCompletionListener != null) {
                        GLVideoView.this.mOnCompletionListener.onCompletion(GLVideoView.this.mMediaPlayer);
                    }
                }
                return true;
            }
        };
        this.mBufferingUpdateListener = new MediaPlayer.OnBufferingUpdateListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.9
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnBufferingUpdateListener
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
                GLVideoView.this.mCurrentBufferPercentage = i;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.10
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                GLVideoView.this.mSurfaceWidth = i2;
                GLVideoView.this.mSurfaceHeight = i3;
                boolean z = GLVideoView.this.mTargetState == 3;
                boolean z2 = GLVideoView.this.mVideoWidth == i2 && GLVideoView.this.mVideoHeight == i3;
                if (GLVideoView.this.mMediaPlayer != null && z && z2) {
                    if (GLVideoView.this.mSeekWhenPrepared != 0) {
                        GLVideoView gLVideoView = GLVideoView.this;
                        gLVideoView.seekTo(gLVideoView.mSeekWhenPrepared);
                    }
                    GLVideoView.this.start();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                GLVideoView.this.mSurfaceHolder = surfaceHolder;
                GLVideoView.this.openVideo();
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                GLVideoView.this.mSurfaceHolder = null;
                if (GLVideoView.this.mMediaController != null) {
                    GLVideoView.this.mMediaController.hide();
                }
                GLVideoView.this.release(true);
            }
        };
        this.mContext = context;
        this.mVideoWidth = 0;
        this.mVideoHeight = 0;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.mCurrentState = 0;
        this.mTargetState = 0;
        setEGLContextClientVersion(2);
        this.videoRender = new VideoRenderer(context);
        setEGLContextFactory(new MyContextFactory(this.videoRender));
        setRenderer(this.videoRender);
    }

    public MediaPlayer getMediaPlayer() {
        return this.mMediaPlayer;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0065 A[PHI: r6
  0x0065: PHI (r6v6 int) = (r6v5 int), (r6v3 int), (r6v3 int), (r6v3 int) binds: [B:27:0x0064, B:25:0x0061, B:19:0x0051, B:13:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.SurfaceView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.mVideoWidth
            int r0 = android.opengl.GLSurfaceView.getDefaultSize(r0, r6)
            int r1 = r5.mVideoHeight
            int r1 = android.opengl.GLSurfaceView.getDefaultSize(r1, r7)
            int r2 = r5.mVideoWidth
            if (r2 <= 0) goto L84
            int r2 = r5.mVideoHeight
            if (r2 <= 0) goto L84
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L44
            if (r1 != r2) goto L44
            int r0 = r5.mVideoWidth
            int r1 = r0 * r7
            int r2 = r5.mVideoHeight
            int r3 = r6 * r2
            if (r1 >= r3) goto L39
            int r0 = r0 * r7
            int r0 = r0 / r2
            r1 = r7
            goto L84
        L39:
            int r1 = r0 * r7
            int r3 = r6 * r2
            if (r1 <= r3) goto L65
            int r2 = r2 * r6
            int r1 = r2 / r0
            goto L85
        L44:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L56
            int r0 = r5.mVideoHeight
            int r0 = r0 * r6
            int r2 = r5.mVideoWidth
            int r0 = r0 / r2
            if (r1 != r3) goto L54
            if (r0 <= r7) goto L54
            goto L63
        L54:
            r1 = r0
            goto L85
        L56:
            if (r1 != r2) goto L67
            int r1 = r5.mVideoWidth
            int r1 = r1 * r7
            int r2 = r5.mVideoHeight
            int r1 = r1 / r2
            if (r0 != r3) goto L64
            if (r1 <= r6) goto L64
        L63:
            goto L65
        L64:
            r6 = r1
        L65:
            r1 = r7
            goto L85
        L67:
            int r2 = r5.mVideoWidth
            int r4 = r5.mVideoHeight
            if (r1 != r3) goto L74
            if (r4 <= r7) goto L74
            int r2 = r2 * r7
            int r2 = r2 / r4
            r1 = r7
            goto L75
        L74:
            r1 = r4
        L75:
            if (r0 != r3) goto L82
            if (r2 <= r6) goto L82
            int r7 = r5.mVideoHeight
            int r7 = r7 * r6
            int r0 = r5.mVideoWidth
            int r1 = r7 / r0
            goto L85
        L82:
            r6 = r2
            goto L85
        L84:
            r6 = r0
        L85:
            r5.setMeasuredDimension(r6, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.screenroom.widgets.GLVideoView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return VideoView.class.getName();
    }

    public int resolveAdjustedSize(int i, int i2) {
        return GLSurfaceView.getDefaultSize(i, i2);
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isPreparing() {
        return this.mCurrentState == 1;
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri) {
        setVideoURI(uri, null);
        clearSurfaceView();
    }

    public void setVideoURI(Uri uri, Map<String, String> map) {
        this.mUri = uri;
        this.mHeaders = map;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    public void stopPlayback() {
        stopPlayback(false);
    }

    public void stopPlayback(boolean z) {
        VideoController videoController;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            this.mTargetState = 0;
            ((AudioManager) this.mContext.getSystemService("audio")).abandonAudioFocus(null);
        }
        if (z || (videoController = this.mMediaController) == null) {
            return;
        }
        videoController.setMediaPlayer(null);
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public float getVolume() {
        return this.mVolume;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void setVolume(float f) {
        this.mVolume = f;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openVideo() {
        VideoRenderer videoRenderer;
        if (this.mUri == null || (videoRenderer = this.videoRender) == null || videoRenderer.getSurface() == null || !this.isSurfaceCreated) {
            return;
        }
        release(false);
        ((AudioManager) this.mContext.getSystemService("audio")).requestAudioFocus(null, 3, 1);
        try {
            this.mMediaPlayer = new MediaPlayer();
            this.mMediaPlayer.setVolume(this.mVolume);
            if (this.mAudioSession != 0) {
                this.mMediaPlayer.setAudioSessionId(this.mAudioSession);
            } else {
                this.mAudioSession = this.mMediaPlayer.getAudioSessionId();
            }
            if (this.videoRender != null && this.videoRender.getSurface() != null) {
                this.mMediaPlayer.setSurface(this.videoRender.getSurface());
            }
            this.mMediaPlayer.setOnPreparedListener(this.mPreparedListener);
            this.mMediaPlayer.setOnVideoSizeChangedListener(this.mSizeChangedListener);
            this.mMediaPlayer.setOnCompletionListener(this.mCompletionListener);
            this.mMediaPlayer.setOnErrorListener(this.mErrorListener);
            this.mMediaPlayer.setOnInfoListener(this.mInfoListener);
            this.mMediaPlayer.setOnSeekListener(this.onSeekListener);
            this.mMediaPlayer.setOnSeekCompleteListener(this.onSeekCompleteListener);
            this.mMediaPlayer.setOnBufferingUpdateListener(this.mBufferingUpdateListener);
            this.mCurrentBufferPercentage = 0;
            this.mMediaPlayer.setAudioStreamType(3);
            this.mMediaPlayer.setKeepScreenOnView(this);
            this.mMediaPlayer.setScreenOnWhilePlaying(true);
            this.mMediaPlayer.setAudioFrameAvailableListener(new MediaPlayer.AudioFrameAvailableListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.2
                @Override // net.protyposis.android.mediaplayer.MediaPlayer.AudioFrameAvailableListener
                public void onAudioFrameAvailable(byte[] bArr, int i, int i2, int i3, int i4) {
                    MediaFrameAvailableListener mediaFrameAvailableListener = GLVideoView.this.mediaFrameAvailableListener;
                    if (mediaFrameAvailableListener != null) {
                        mediaFrameAvailableListener.onAudioFrameAvailable(bArr, i, i2, i3, i4);
                    }
                }
            });
            final MediaPlayer mediaPlayer = this.mMediaPlayer;
            new Thread(new Runnable() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        GLVideoView.this.mMediaPlayer.setDataSource(GLVideoView.this.mContext, GLVideoView.this.mUri, GLVideoView.this.mHeaders);
                        if (GLVideoView.this.mMediaPlayer != mediaPlayer) {
                            mediaPlayer.release();
                        } else {
                            mediaPlayer.prepareAsync();
                            Log.d(GLVideoView.TAG, "video opened");
                        }
                    } catch (IOException e) {
                        Log.e(GLVideoView.TAG, "video open failed", e);
                        if (GLVideoView.this.mMediaPlayer == mediaPlayer) {
                            GLVideoView.this.exceptionHandler.sendEmptyMessage(0);
                        }
                    } catch (Exception e2) {
                        Log.e(GLVideoView.TAG, "something went wrong", e2);
                    }
                }
            }).start();
            this.mCurrentState = 1;
            attachMediaController();
        } catch (Exception e) {
            Log.w(TAG, "Unable to open content: " + this.mUri, e);
            this.mCurrentState = -1;
            this.mTargetState = -1;
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        }
    }

    public Uri getUri() {
        return this.mUri;
    }

    public void setMediaController(VideoController videoController) {
        this.mMediaController = videoController;
        attachMediaController();
    }

    private void attachMediaController() {
        VideoController videoController;
        if (this.mMediaPlayer == null || (videoController = this.mMediaController) == null) {
            return;
        }
        videoController.setMediaPlayer(this);
        if (getParent() instanceof View) {
        }
        this.mMediaController.setEnabled(isInPlaybackState());
    }

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnVideoSizeChangeListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangeListener = onVideoSizeChangedListener;
    }

    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        this.mOnCompletionListener = onCompletionListener;
    }

    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(MediaPlayer.OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.onSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSeekListener(MediaPlayer.OnSeekListener onSeekListener) {
        this.onSeekListener = onSeekListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z) {
                this.mTargetState = 0;
            }
            ((AudioManager) this.mContext.getSystemService("audio")).abandonAudioFocus(null);
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
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
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

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void start() {
        if (isInPlaybackState()) {
            try {
                this.mMediaPlayer.start();
                this.mCurrentState = 3;
            } catch (Exception e) {
                com.narvii.util.Log.e("mediaPlayer", e);
            }
        }
        this.mTargetState = 3;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            try {
                this.mMediaPlayer.pause();
                this.mCurrentState = 4;
            } catch (Exception e) {
                com.narvii.util.Log.e("mediaPlayer", e);
            }
        }
        this.mTargetState = 4;
    }

    public void suspend() {
        release(false);
    }

    public void resume() {
        openVideo();
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public int getDuration() {
        try {
            if (isInPlaybackState()) {
                return this.mMediaPlayer.getDuration();
            }
            return -1;
        } catch (Exception e) {
            com.narvii.util.Log.e("mediaPlayer", e);
            return -1;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public int getCurrentPosition() {
        try {
            if (isInPlaybackState()) {
                return this.mMediaPlayer.getCurrentPosition();
            }
            return 0;
        } catch (Exception e) {
            com.narvii.util.Log.e("mediaPlayer", e);
            return 0;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void seekTo(int i) {
        try {
            if (isInPlaybackState()) {
                this.mMediaPlayer.seekTo(i);
                this.mSeekWhenPrepared = 0;
            } else {
                this.mSeekWhenPrepared = i;
            }
        } catch (Exception e) {
            com.narvii.util.Log.e("mediaPlayer", e);
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isPlaying() {
        try {
            if (isInPlaybackState()) {
                return this.mMediaPlayer.isPlaying();
            }
            return false;
        } catch (Exception e) {
            com.narvii.util.Log.e("mediaPlayer", e);
            return false;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isTargetPaused() {
        return isInPlaybackState() && this.mTargetState == 4;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
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

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean canPause() {
        return this.mCanPause;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean canSeekBackward() {
        return this.mCanSeekBack;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean canSeekForward() {
        return this.mCanSeekForward;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public int getAudioSessionId() {
        if (this.mAudioSession == 0) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mAudioSession = mediaPlayer.getAudioSessionId();
            mediaPlayer.release();
        }
        return this.mAudioSession;
    }

    public void clearSurfaceView() {
        this.clearSurfaceView.set(true);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    class VideoRenderer implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {
        private Context context;
        private EGLContext eglContext;
        private FullFrameRect fullFrameRect;
        private FullFrameRect offlineFrameRect;
        private Surface surface;
        private SurfaceTexture surfaceTexture;
        private int textureId;
        private final float[] sTMatrix = new float[16];
        public volatile boolean updateSurface = false;
        private boolean updateTexImageErrorReported = false;
        private int mFramebuffer = 0;
        private int mOffscreenTexture = 0;

        public VideoRenderer(Context context) {
            this.context = context;
        }

        public Surface getSurface() {
            return this.surface;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            if (!GLVideoView.this.isSurfaceInited) {
                this.fullFrameRect = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
                this.offlineFrameRect = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
                this.textureId = this.fullFrameRect.createTextureObject();
                this.surfaceTexture = new SurfaceTexture(this.textureId);
                this.surfaceTexture.setOnFrameAvailableListener(this);
                this.surface = new Surface(this.surfaceTexture);
                synchronized (this) {
                    this.updateSurface = false;
                    Utils.handler.post(new Runnable() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.VideoRenderer.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GLVideoView gLVideoView = GLVideoView.this;
                            gLVideoView.isSurfaceCreated = true;
                            gLVideoView.openVideo();
                        }
                    });
                    GLVideoView.this.isSurfaceInited = true;
                }
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i, int i2) {
            GLVideoView.this.mSurfaceWidth = i;
            GLVideoView.this.mSurfaceHeight = i2;
            GLVideoView.this.isViewPortSet = false;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            boolean z;
            synchronized (this) {
                if (this.updateSurface) {
                    GLVideoView.this.clearSurfaceView.set(false);
                    try {
                        this.surfaceTexture.updateTexImage();
                        this.surfaceTexture.getTransformMatrix(this.sTMatrix);
                    } catch (Exception e) {
                        if (!this.updateTexImageErrorReported) {
                            com.narvii.util.Log.e(GLVideoView.TAG, e);
                            this.updateTexImageErrorReported = true;
                        }
                    }
                    this.updateSurface = false;
                    z = true;
                } else {
                    if (GLVideoView.this.clearSurfaceView.get()) {
                        GLES20.glClear(16384);
                        return;
                    }
                    z = false;
                }
                if (!GLVideoView.this.isViewPortSet) {
                    prepareFramebuffer(GLVideoView.this.mSurfaceWidth, GLVideoView.this.mSurfaceHeight);
                    GLVideoView.this.isViewPortSet = true;
                }
                GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
                GLES20.glClear(16640);
                GLES20.glViewport(0, 0, GLVideoView.this.mSurfaceWidth, GLVideoView.this.mSurfaceHeight);
                GLES20.glBindFramebuffer(36160, this.mFramebuffer);
                this.fullFrameRect.drawFrame(this.textureId, this.sTMatrix);
                GLES20.glBindFramebuffer(36160, 0);
                this.offlineFrameRect.drawFrame(this.mOffscreenTexture, GlUtil.IDENTITY_MATRIX);
                GLVideoView gLVideoView = GLVideoView.this;
                MediaFrameAvailableListener mediaFrameAvailableListener = gLVideoView.mediaFrameAvailableListener;
                if (mediaFrameAvailableListener == null || !z) {
                    return;
                }
                mediaFrameAvailableListener.onVideoFrameAvailable(this.mOffscreenTexture, 0, this.eglContext, gLVideoView.mSurfaceWidth, GLVideoView.this.mSurfaceHeight, GlUtil.IDENTITY_MATRIX);
            }
        }

        public void onPause() {
            int[] iArr = new int[1];
            SurfaceTexture surfaceTexture = this.surfaceTexture;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                this.surfaceTexture = null;
            }
            FullFrameRect fullFrameRect = this.fullFrameRect;
            if (fullFrameRect != null) {
                fullFrameRect.release(false);
                this.fullFrameRect = null;
            }
            int i = this.mOffscreenTexture;
            if (i > 0) {
                iArr[0] = i;
                GLES20.glDeleteTextures(1, iArr, 0);
                this.mOffscreenTexture = -1;
            }
            int i2 = this.mFramebuffer;
            if (i2 > 0) {
                iArr[0] = i2;
                GLES20.glDeleteFramebuffers(1, iArr, 0);
                this.mFramebuffer = -1;
            }
        }

        private void prepareFramebuffer(int i, int i2) {
            GlUtil.checkGlError("prepareFramebuffer start");
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GlUtil.checkGlError("glGenTextures");
            int i3 = this.mOffscreenTexture;
            this.mOffscreenTexture = iArr[0];
            GLES20.glBindTexture(3553, this.mOffscreenTexture);
            GlUtil.checkGlError("glBindTexture " + this.mOffscreenTexture);
            if (i3 > 0) {
                GLES20.glDeleteTextures(1, new int[]{i3}, 0);
            }
            GLES20.glTexImage2D(3553, 0, 6408, i, i2, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10241, 9728.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GlUtil.checkGlError("glTexParameter");
            GLES20.glGenFramebuffers(1, iArr, 0);
            GlUtil.checkGlError("glGenFramebuffers");
            int i4 = this.mFramebuffer;
            this.mFramebuffer = iArr[0];
            if (i4 > 0) {
                GLES20.glDeleteFramebuffers(1, new int[]{i4}, 0);
            }
            GLES20.glBindFramebuffer(36160, this.mFramebuffer);
            GlUtil.checkGlError("glBindFramebuffer " + this.mFramebuffer);
            GlUtil.checkGlError("glFramebufferRenderbuffer");
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mOffscreenTexture, 0);
            GlUtil.checkGlError("glFramebufferTexture2D");
            int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
            if (iGlCheckFramebufferStatus != 36053) {
                Log.d(GLVideoView.TAG, "Framebuffer not complete, status=" + iGlCheckFramebufferStatus);
            }
            GLES20.glBindFramebuffer(36160, 0);
            GlUtil.checkGlError("prepareFramebuffer done");
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
            this.updateSurface = true;
        }
    }

    private class MyContextFactory implements GLSurfaceView.EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION = 12440;
        private VideoRenderer mRenderer;

        public MyContextFactory(VideoRenderer videoRenderer) {
            this.mRenderer = videoRenderer;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            EGLContext eGLContext;
            checkEglError("before createContext", egl10);
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, 2, 12344};
            if (this.mRenderer.eglContext == null) {
                this.mRenderer.eglContext = egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, iArr);
                eGLContext = this.mRenderer.eglContext;
            } else {
                eGLContext = this.mRenderer.eglContext;
            }
            checkEglError("after createContext", egl10);
            return eGLContext;
        }

        @Override // android.opengl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (this.mRenderer.eglContext == null) {
                egl10.eglDestroyContext(eGLDisplay, eGLContext);
            }
        }

        private void checkEglError(String str, EGL10 egl10) {
            while (egl10.eglGetError() != 12288) {
            }
        }
    }
}
