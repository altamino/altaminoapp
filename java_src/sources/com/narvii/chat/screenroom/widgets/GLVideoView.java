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
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.widget.VideoView;
import com.narvii.chat.screenroom.MediaPlayerControl;
import com.narvii.util.Log;
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

/* JADX INFO: loaded from: classes2.dex */
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
        void onAudioFrameAvailable(byte[] bArr, int i10, int i11, int i12, int i13);

        void onVideoFrameAvailable(int i10, int i11, EGLContext eGLContext, int i12, int i13, float[] fArr);
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

        public Surface getSurface() {
            return this.surface;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            boolean z6;
            synchronized (this) {
                if (this.updateSurface) {
                    GLVideoView.this.clearSurfaceView.set(false);
                    try {
                        this.surfaceTexture.updateTexImage();
                        this.surfaceTexture.getTransformMatrix(this.sTMatrix);
                    } catch (Exception e) {
                        if (!this.updateTexImageErrorReported) {
                            Log.e(GLVideoView.TAG, e);
                            this.updateTexImageErrorReported = true;
                        }
                    }
                    this.updateSurface = false;
                    z6 = true;
                } else {
                    if (GLVideoView.this.clearSurfaceView.get()) {
                        GLES20.glClear(16384);
                        return;
                    }
                    z6 = false;
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
                FullFrameRect fullFrameRect = this.offlineFrameRect;
                int i10 = this.mOffscreenTexture;
                float[] fArr = GlUtil.IDENTITY_MATRIX;
                fullFrameRect.drawFrame(i10, fArr);
                GLVideoView gLVideoView = GLVideoView.this;
                MediaFrameAvailableListener mediaFrameAvailableListener = gLVideoView.mediaFrameAvailableListener;
                if (mediaFrameAvailableListener == null || !z6) {
                    return;
                }
                mediaFrameAvailableListener.onVideoFrameAvailable(this.mOffscreenTexture, 0, this.eglContext, gLVideoView.mSurfaceWidth, GLVideoView.this.mSurfaceHeight, fArr);
            }
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
            this.updateSurface = true;
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
            int i10 = this.mOffscreenTexture;
            if (i10 > 0) {
                iArr[0] = i10;
                GLES20.glDeleteTextures(1, iArr, 0);
                this.mOffscreenTexture = -1;
            }
            int i11 = this.mFramebuffer;
            if (i11 > 0) {
                iArr[0] = i11;
                GLES20.glDeleteFramebuffers(1, iArr, 0);
                this.mFramebuffer = -1;
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            if (!GLVideoView.this.isSurfaceInited) {
                this.fullFrameRect = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_EXT));
                this.offlineFrameRect = new FullFrameRect(new Texture2dProgram(Texture2dProgram.ProgramType.TEXTURE_2D));
                this.textureId = this.fullFrameRect.createTextureObject();
                SurfaceTexture surfaceTexture = new SurfaceTexture(this.textureId);
                this.surfaceTexture = surfaceTexture;
                surfaceTexture.setOnFrameAvailableListener(this);
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

        public VideoRenderer(Context context) {
            this.context = context;
        }

        private void prepareFramebuffer(int i10, int i11) {
            GlUtil.checkGlError("prepareFramebuffer start");
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GlUtil.checkGlError("glGenTextures");
            int i12 = this.mOffscreenTexture;
            int i13 = iArr[0];
            this.mOffscreenTexture = i13;
            GLES20.glBindTexture(3553, i13);
            GlUtil.checkGlError("glBindTexture " + this.mOffscreenTexture);
            if (i12 > 0) {
                GLES20.glDeleteTextures(1, new int[]{i12}, 0);
            }
            GLES20.glTexImage2D(3553, 0, 6408, i10, i11, 0, 6408, 5121, null);
            GLES20.glTexParameterf(3553, 10241, 9728.0f);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameteri(3553, 10242, 33071);
            GLES20.glTexParameteri(3553, 10243, 33071);
            GlUtil.checkGlError("glTexParameter");
            GLES20.glGenFramebuffers(1, iArr, 0);
            GlUtil.checkGlError("glGenFramebuffers");
            int i14 = this.mFramebuffer;
            this.mFramebuffer = iArr[0];
            if (i14 > 0) {
                GLES20.glDeleteFramebuffers(1, new int[]{i14}, 0);
            }
            GLES20.glBindFramebuffer(36160, this.mFramebuffer);
            GlUtil.checkGlError("glBindFramebuffer " + this.mFramebuffer);
            GlUtil.checkGlError("glFramebufferRenderbuffer");
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, this.mOffscreenTexture, 0);
            GlUtil.checkGlError("glFramebufferTexture2D");
            int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
            if (iGlCheckFramebufferStatus != 36053) {
                android.util.Log.d(GLVideoView.TAG, "Framebuffer not complete, status=" + iGlCheckFramebufferStatus);
            }
            GLES20.glBindFramebuffer(36160, 0);
            GlUtil.checkGlError("prepareFramebuffer done");
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLVideoView.this.mSurfaceWidth = i10;
            GLVideoView.this.mSurfaceHeight = i11;
            GLVideoView.this.isViewPortSet = false;
        }
    }

    public GLVideoView(Context context) {
        this(context, null);
    }

    private boolean isInPlaybackState() {
        int i10;
        return (this.mMediaPlayer == null || (i10 = this.mCurrentState) == -1 || i10 == 0 || i10 == 1) ? false : true;
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
    public int getBufferPercentage() {
        if (this.mMediaPlayer != null) {
            return this.mCurrentBufferPercentage;
        }
        return 0;
    }

    public MediaPlayer getMediaPlayer() {
        return this.mMediaPlayer;
    }

    public Uri getUri() {
        return this.mUri;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public float getVolume() {
        return this.mVolume;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isPlaying() {
        try {
            return isInPlaybackState() && this.mMediaPlayer.isPlaying();
        } catch (Exception e) {
            Log.e("mediaPlayer", e);
            return false;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isPreparing() {
        return this.mCurrentState == 1;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, KeyEvent keyEvent) {
        boolean z6 = (i10 == 4 || i10 == 24 || i10 == 25 || i10 == 164 || i10 == 82 || i10 == 5 || i10 == 6) ? false : true;
        if (isInPlaybackState() && z6 && this.mMediaController != null) {
            if (i10 == 79 || i10 == 85) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                } else {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i10 == 126) {
                if (!this.mMediaPlayer.isPlaying()) {
                    start();
                    this.mMediaController.hide();
                }
                return true;
            }
            if (i10 == 86 || i10 == 127) {
                if (this.mMediaPlayer.isPlaying()) {
                    pause();
                    this.mMediaController.show();
                }
                return true;
            }
            toggleMediaControlsVisiblity();
        }
        return super.onKeyDown(i10, keyEvent);
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

    public void setOnPreparedListener(MediaPlayer.OnPreparedListener onPreparedListener) {
        this.mOnPreparedListener = onPreparedListener;
    }

    public void setOnSeekCompleteListener(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener) {
        this.onSeekCompleteListener = onSeekCompleteListener;
    }

    public void setOnSeekListener(MediaPlayer.OnSeekListener onSeekListener) {
        this.onSeekListener = onSeekListener;
    }

    public void setOnVideoSizeChangeListener(MediaPlayer.OnVideoSizeChangedListener onVideoSizeChangedListener) {
        this.mOnVideoSizeChangeListener = onVideoSizeChangedListener;
    }

    public void setVideoFrameAvailableListener(MediaFrameAvailableListener mediaFrameAvailableListener) {
        this.mediaFrameAvailableListener = mediaFrameAvailableListener;
    }

    public void setVideoURI(Uri uri) {
        setVideoURI(uri, null);
        clearSurfaceView();
    }

    public void stopPlayback() {
        stopPlayback(false);
    }

    public void suspend() {
        release(false);
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
            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
                GLVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                GLVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                if (GLVideoView.this.mOnVideoSizeChangeListener != null) {
                    GLVideoView.this.mOnVideoSizeChangeListener.onVideoSizeChanged(mediaPlayer, i10, i11);
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
                gLVideoView.mCanSeekForward = true;
                gLVideoView.mCanSeekBack = true;
                gLVideoView.mCanPause = true;
                if (GLVideoView.this.mOnPreparedListener != null) {
                    GLVideoView.this.mOnPreparedListener.onPrepared(GLVideoView.this.mMediaPlayer);
                }
                if (GLVideoView.this.mMediaController != null) {
                    GLVideoView.this.mMediaController.setEnabled(true);
                }
                GLVideoView.this.mVideoWidth = mediaPlayer.getVideoWidth();
                GLVideoView.this.mVideoHeight = mediaPlayer.getVideoHeight();
                int i10 = GLVideoView.this.mSeekWhenPrepared;
                if (i10 != 0) {
                    GLVideoView.this.seekTo(i10);
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
                    if ((i10 != 0 || GLVideoView.this.getCurrentPosition() > 0) && GLVideoView.this.mMediaController != null) {
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
            public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
                if (GLVideoView.this.mOnInfoListener == null) {
                    return true;
                }
                GLVideoView.this.mOnInfoListener.onInfo(mediaPlayer, i10, i11);
                return true;
            }
        };
        this.mErrorListener = new MediaPlayer.OnErrorListener() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.8
            @Override // net.protyposis.android.mediaplayer.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
                android.util.Log.d(GLVideoView.TAG, "Error: " + i10 + "," + i11);
                GLVideoView.this.mCurrentState = -1;
                GLVideoView.this.mTargetState = -1;
                if (GLVideoView.this.mMediaController != null) {
                    GLVideoView.this.mMediaController.hide();
                }
                if ((GLVideoView.this.mOnErrorListener == null || !GLVideoView.this.mOnErrorListener.onError(GLVideoView.this.mMediaPlayer, i10, i11)) && GLVideoView.this.getWindowToken() != null) {
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
            public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
                GLVideoView.this.mCurrentBufferPercentage = i10;
            }
        };
        this.mSHCallback = new SurfaceHolder.Callback() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.10
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i10, int i11, int i12) {
                GLVideoView.this.mSurfaceWidth = i11;
                GLVideoView.this.mSurfaceHeight = i12;
                boolean z6 = false;
                boolean z10 = GLVideoView.this.mTargetState == 3;
                if (GLVideoView.this.mVideoWidth == i11 && GLVideoView.this.mVideoHeight == i12) {
                    z6 = true;
                }
                if (GLVideoView.this.mMediaPlayer != null && z10 && z6) {
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
        VideoRenderer videoRenderer = new VideoRenderer(context);
        this.videoRender = videoRenderer;
        setEGLContextFactory(new MyContextFactory(videoRenderer));
        setRenderer(this.videoRender);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void openVideo() {
        VideoRenderer videoRenderer;
        if (this.mUri == null || (videoRenderer = this.videoRender) == null || videoRenderer.getSurface() == null || !this.isSurfaceCreated) {
            return;
        }
        release(false);
        ((AudioManager) this.mContext.getSystemService("audio")).requestAudioFocus(null, 3, 1);
        try {
            MediaPlayer mediaPlayer = new MediaPlayer();
            this.mMediaPlayer = mediaPlayer;
            mediaPlayer.setVolume(this.mVolume);
            int i10 = this.mAudioSession;
            if (i10 != 0) {
                this.mMediaPlayer.setAudioSessionId(i10);
            } else {
                this.mAudioSession = this.mMediaPlayer.getAudioSessionId();
            }
            VideoRenderer videoRenderer2 = this.videoRender;
            if (videoRenderer2 != null && videoRenderer2.getSurface() != null) {
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
                public void onAudioFrameAvailable(byte[] bArr, int i11, int i12, int i13, int i14) {
                    MediaFrameAvailableListener mediaFrameAvailableListener = GLVideoView.this.mediaFrameAvailableListener;
                    if (mediaFrameAvailableListener != null) {
                        mediaFrameAvailableListener.onAudioFrameAvailable(bArr, i11, i12, i13, i14);
                    }
                }
            });
            final MediaPlayer mediaPlayer2 = this.mMediaPlayer;
            new Thread(new Runnable() { // from class: com.narvii.chat.screenroom.widgets.GLVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        GLVideoView.this.mMediaPlayer.setDataSource(GLVideoView.this.mContext, GLVideoView.this.mUri, GLVideoView.this.mHeaders);
                        MediaPlayer mediaPlayer3 = GLVideoView.this.mMediaPlayer;
                        MediaPlayer mediaPlayer4 = mediaPlayer2;
                        if (mediaPlayer3 != mediaPlayer4) {
                            mediaPlayer4.release();
                        } else {
                            mediaPlayer4.prepareAsync();
                            android.util.Log.d(GLVideoView.TAG, "video opened");
                        }
                    } catch (IOException e) {
                        android.util.Log.e(GLVideoView.TAG, "video open failed", e);
                        if (GLVideoView.this.mMediaPlayer == mediaPlayer2) {
                            GLVideoView.this.exceptionHandler.sendEmptyMessage(0);
                        }
                    } catch (Exception e2) {
                        android.util.Log.e(GLVideoView.TAG, "something went wrong", e2);
                    }
                }
            }).start();
            this.mCurrentState = 1;
            attachMediaController();
        } catch (Exception e) {
            android.util.Log.w(TAG, "Unable to open content: " + this.mUri, e);
            this.mCurrentState = -1;
            this.mTargetState = -1;
            this.mErrorListener.onError(this.mMediaPlayer, 1, 0);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release(boolean z6) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mCurrentState = 0;
            if (z6) {
                this.mTargetState = 0;
            }
            ((AudioManager) this.mContext.getSystemService("audio")).abandonAudioFocus(null);
        }
    }

    private void toggleMediaControlsVisiblity() {
        if (this.mMediaController.isShowing()) {
            this.mMediaController.hide();
        } else {
            this.mMediaController.show();
        }
    }

    public void clearSurfaceView() {
        this.clearSurfaceView.set(true);
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return VideoView.class.getName();
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

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i10, int i11) {
        int i12;
        int defaultSize = View.getDefaultSize(this.mVideoWidth, i10);
        int defaultSize2 = View.getDefaultSize(this.mVideoHeight, i11);
        if (this.mVideoWidth > 0 && this.mVideoHeight > 0) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i13 = this.mVideoWidth;
                int i14 = i13 * size2;
                int i15 = this.mVideoHeight;
                if (i14 < size * i15) {
                    defaultSize = (i13 * size2) / i15;
                } else {
                    if (i13 * size2 > size * i15) {
                        defaultSize2 = (i15 * size) / i13;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i16 = (this.mVideoHeight * size) / this.mVideoWidth;
                if (mode2 != Integer.MIN_VALUE || i16 <= size2) {
                    defaultSize2 = i16;
                    defaultSize = size;
                }
                defaultSize = size;
                defaultSize2 = size2;
            } else {
                if (mode2 == 1073741824) {
                    i12 = (this.mVideoWidth * size2) / this.mVideoHeight;
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                } else {
                    int i17 = this.mVideoWidth;
                    int i18 = this.mVideoHeight;
                    if (mode2 != Integer.MIN_VALUE || i18 <= size2) {
                        i12 = i17;
                        size2 = i18;
                    } else {
                        i12 = (size2 * i17) / i18;
                    }
                    if (mode == Integer.MIN_VALUE && i12 > size) {
                        defaultSize2 = (i18 * size) / i17;
                        defaultSize = size;
                    }
                }
                defaultSize = i12;
                defaultSize2 = size2;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    public void setMediaController(VideoController videoController) {
        this.mMediaController = videoController;
        attachMediaController();
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void setVolume(float f) {
        this.mVolume = f;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setVolume(f);
        }
    }

    public void stopPlayback(boolean z6) {
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
        if (z6 || (videoController = this.mMediaController) == null) {
            return;
        }
        videoController.setMediaPlayer(null);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public int getCurrentPosition() {
        try {
            if (isInPlaybackState()) {
                return this.mMediaPlayer.getCurrentPosition();
            }
            return 0;
        } catch (Exception e) {
            Log.e("mediaPlayer", e);
            return 0;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public int getDuration() {
        try {
            if (isInPlaybackState()) {
                return this.mMediaPlayer.getDuration();
            }
            return -1;
        } catch (Exception e) {
            Log.e("mediaPlayer", e);
            return -1;
        }
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public boolean isTargetPaused() {
        if (isInPlaybackState() && this.mTargetState == 4) {
            return true;
        }
        return false;
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
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isInPlaybackState() && this.mMediaController != null) {
            toggleMediaControlsVisiblity();
            return false;
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (isInPlaybackState() && this.mMediaController != null) {
            toggleMediaControlsVisiblity();
            return false;
        }
        return false;
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void pause() {
        if (isInPlaybackState() && this.mMediaPlayer.isPlaying()) {
            try {
                this.mMediaPlayer.pause();
                this.mCurrentState = 4;
            } catch (Exception e) {
                Log.e("mediaPlayer", e);
            }
        }
        this.mTargetState = 4;
    }

    public int resolveAdjustedSize(int i10, int i11) {
        return View.getDefaultSize(i10, i11);
    }

    public void resume() {
        openVideo();
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void seekTo(int i10) {
        try {
            if (isInPlaybackState()) {
                this.mMediaPlayer.seekTo(i10);
                this.mSeekWhenPrepared = 0;
            } else {
                this.mSeekWhenPrepared = i10;
            }
        } catch (Exception e) {
            Log.e("mediaPlayer", e);
        }
    }

    public void setVideoPath(String str) {
        setVideoURI(Uri.parse(str));
    }

    public void setVideoURI(Uri uri, Map<String, String> map) {
        this.mUri = uri;
        this.mHeaders = map;
        this.mSeekWhenPrepared = 0;
        openVideo();
        requestLayout();
        invalidate();
    }

    @Override // com.narvii.chat.screenroom.MediaPlayerControl
    public void start() {
        if (isInPlaybackState()) {
            try {
                this.mMediaPlayer.start();
                this.mCurrentState = 3;
            } catch (Exception e) {
                Log.e("mediaPlayer", e);
            }
        }
        this.mTargetState = 3;
    }
}
