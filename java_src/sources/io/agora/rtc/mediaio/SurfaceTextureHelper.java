package io.agora.rtc.mediaio;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import io.agora.rtc.gl.EglBase;
import io.agora.rtc.gl.GlUtil;
import io.agora.rtc.gl.TextureBufferImpl;
import io.agora.rtc.gl.TextureTransformer;
import io.agora.rtc.gl.VideoFrame;
import io.agora.rtc.gl.YuvConverter;
import io.agora.rtc.utils.ThreadUtils;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceTextureHelper {
    private static final int MAX_TEXTURE_COPY = 2;
    private static final String TAG = "SurfaceTextureHelper";
    private final EglBase eglBase;
    private final Handler handler;
    private boolean hasPendingTexture;
    private boolean isQuitting;
    private volatile boolean isTextureInUse;
    private OnTextureFrameAvailableListener listener;
    private boolean mCopyTo2DTexture;
    private int mHeight;
    private int mWidth;
    private final int oesTextureId;
    private OnTextureFrameAvailableListener pendingListener;
    final Runnable setListenerRunnable;
    private final SurfaceTexture surfaceTexture;
    private TextureTransformer textureTransformer;
    private YuvConverter yuvConverter;

    public interface OnTextureFrameAvailableListener {
        void onTextureFrameAvailable(int oesTextureId, MediaIO.PixelFormat format, float[] transformMatrix, long timestampNs);

        void onTextureFrameAvailable(int oesTextureId, float[] transformMatrix, long timestampNs);
    }

    public static SurfaceTextureHelper create(final String threadName, final EglBase.Context sharedContext) {
        HandlerThread handlerThread = new HandlerThread(threadName);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        return (SurfaceTextureHelper) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<SurfaceTextureHelper>() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public SurfaceTextureHelper call() {
                try {
                    return new SurfaceTextureHelper(sharedContext, handler);
                } catch (RuntimeException e) {
                    Log.e(SurfaceTextureHelper.TAG, threadName + " create failure", e);
                    return null;
                }
            }
        });
    }

    public Handler getHandler() {
        return this.handler;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public boolean isTextureInUse() {
        return this.isTextureInUse;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        if (this.handler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Wrong thread.");
        }
        if (this.isTextureInUse || !this.isQuitting) {
            throw new IllegalStateException("Unexpected release.");
        }
        YuvConverter yuvConverter = this.yuvConverter;
        if (yuvConverter != null) {
            yuvConverter.release();
        }
        this.textureTransformer.release();
        GLES20.glDeleteTextures(1, new int[]{this.oesTextureId}, 0);
        this.surfaceTexture.release();
        this.eglBase.release();
        this.handler.getLooper().quit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryDeliverTextureFrame() {
        TextureTransformer textureTransformer;
        if (this.handler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Wrong thread.");
        }
        if (this.isQuitting || !this.hasPendingTexture || this.isTextureInUse || this.listener == null) {
            return;
        }
        this.isTextureInUse = true;
        this.hasPendingTexture = false;
        updateTexImage();
        float[] fArr = new float[16];
        this.surfaceTexture.getTransformMatrix(fArr);
        long timestamp = this.surfaceTexture.getTimestamp();
        if (!this.mCopyTo2DTexture || (textureTransformer = this.textureTransformer) == null) {
            this.listener.onTextureFrameAvailable(this.oesTextureId, fArr, timestamp);
        } else {
            this.listener.onTextureFrameAvailable(textureTransformer.copy(this.oesTextureId, MediaIO.PixelFormat.TEXTURE_OES.intValue(), this.mWidth, this.mHeight), MediaIO.PixelFormat.TEXTURE_2D, fArr, timestamp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTexImage() {
        try {
            synchronized (EglBase.lock) {
                try {
                    this.surfaceTexture.updateTexImage();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (IllegalStateException unused) {
            Log.e(TAG, "SurfaceTextureHelper: failed to updateTexImage!!");
        }
    }

    public VideoFrame.TextureBuffer createTextureBuffer(int width, int height, Matrix transformMatrix) {
        return new TextureBufferImpl(width, height, VideoFrame.TextureBuffer.Type.OES, this.oesTextureId, transformMatrix, this, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.10
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.returnTextureFrame();
            }
        });
    }

    public void dispose() {
        Log.d(TAG, "dispose()");
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.8
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isQuitting = true;
                if (SurfaceTextureHelper.this.isTextureInUse) {
                    return;
                }
                SurfaceTextureHelper.this.release();
            }
        });
    }

    public EglBase.Context getEglContext() {
        return this.eglBase.getEglBaseContext();
    }

    public void returnTextureFrame() {
        this.handler.post(new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.7
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.isTextureInUse = false;
                if (SurfaceTextureHelper.this.isQuitting) {
                    SurfaceTextureHelper.this.release();
                } else {
                    SurfaceTextureHelper.this.tryDeliverTextureFrame();
                }
            }
        });
    }

    public void startListening(final OnTextureFrameAvailableListener listener) {
        if (this.listener != null || this.pendingListener != null) {
            throw new IllegalStateException("SurfaceTextureHelper listener has already been set.");
        }
        this.pendingListener = listener;
        this.handler.post(this.setListenerRunnable);
    }

    public void stopListening() {
        Log.d(TAG, "stopListening()");
        this.handler.removeCallbacks(this.setListenerRunnable);
        ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.6
            @Override // java.lang.Runnable
            public void run() {
                SurfaceTextureHelper.this.listener = null;
                SurfaceTextureHelper.this.pendingListener = null;
            }
        });
    }

    private SurfaceTextureHelper(EglBase.Context sharedContext, Handler handler) {
        this.mCopyTo2DTexture = false;
        this.textureTransformer = null;
        this.hasPendingTexture = false;
        this.isTextureInUse = false;
        this.isQuitting = false;
        this.setListenerRunnable = new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d(SurfaceTextureHelper.TAG, "Setting listener to " + SurfaceTextureHelper.this.pendingListener);
                SurfaceTextureHelper surfaceTextureHelper = SurfaceTextureHelper.this;
                surfaceTextureHelper.listener = surfaceTextureHelper.pendingListener;
                SurfaceTextureHelper.this.pendingListener = null;
                if (SurfaceTextureHelper.this.hasPendingTexture) {
                    SurfaceTextureHelper.this.updateTexImage();
                    SurfaceTextureHelper.this.hasPendingTexture = false;
                }
            }
        };
        if (handler.getLooper().getThread() == Thread.currentThread()) {
            this.handler = handler;
            EglBase eglBaseCreate = EglBase.create(sharedContext, EglBase.CONFIG_PIXEL_BUFFER);
            this.eglBase = eglBaseCreate;
            try {
                eglBaseCreate.createDummyPbufferSurface();
                eglBaseCreate.makeCurrent();
                int iGenerateTexture = GlUtil.generateTexture(36197);
                this.oesTextureId = iGenerateTexture;
                SurfaceTexture surfaceTexture = new SurfaceTexture(iGenerateTexture);
                this.surfaceTexture = surfaceTexture;
                setOnFrameAvailableListener(surfaceTexture, new SurfaceTexture.OnFrameAvailableListener() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.4
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                        SurfaceTextureHelper.this.hasPendingTexture = true;
                        SurfaceTextureHelper.this.tryDeliverTextureFrame();
                    }
                }, handler);
                return;
            } catch (RuntimeException e) {
                Log.e(TAG, "SurfaceTextureHelper: failed to create pbufferSurface!!");
                this.eglBase.release();
                handler.getLooper().quit();
                throw e;
            }
        }
        throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
    }

    @TargetApi(21)
    private static void setOnFrameAvailableListener(SurfaceTexture surfaceTexture, SurfaceTexture.OnFrameAvailableListener listener, Handler handler) {
        surfaceTexture.setOnFrameAvailableListener(listener, handler);
    }

    public VideoFrame.I420Buffer textureToYuv(final VideoFrame.TextureBuffer textureBuffer) {
        if (textureBuffer.getTextureId() == this.oesTextureId) {
            final VideoFrame.I420Buffer[] i420BufferArr = new VideoFrame.I420Buffer[1];
            ThreadUtils.invokeAtFrontUninterruptibly(this.handler, new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.9
                @Override // java.lang.Runnable
                public void run() {
                    if (SurfaceTextureHelper.this.yuvConverter == null) {
                        SurfaceTextureHelper.this.yuvConverter = new YuvConverter();
                    }
                    i420BufferArr[0] = SurfaceTextureHelper.this.yuvConverter.convert(textureBuffer);
                }
            });
            return i420BufferArr[0];
        }
        throw new IllegalStateException("textureToByteBuffer called with unexpected textureId");
    }

    public static SurfaceTextureHelper create(final String threadName, final EglBase.Context sharedContext, final boolean copyTo2DTexture, final int width, final int height) {
        HandlerThread handlerThread = new HandlerThread(threadName);
        handlerThread.start();
        final Handler handler = new Handler(handlerThread.getLooper());
        return (SurfaceTextureHelper) ThreadUtils.invokeAtFrontUninterruptibly(handler, new Callable<SurfaceTextureHelper>() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public SurfaceTextureHelper call() {
                try {
                    return new SurfaceTextureHelper(sharedContext, handler, copyTo2DTexture, width, height);
                } catch (RuntimeException e) {
                    Log.e(SurfaceTextureHelper.TAG, threadName + " create failure", e);
                    return null;
                }
            }
        });
    }

    private SurfaceTextureHelper(EglBase.Context sharedContext, Handler handler, boolean copyTo2DTexture, int width, int height) {
        this.mCopyTo2DTexture = false;
        this.textureTransformer = null;
        this.hasPendingTexture = false;
        this.isTextureInUse = false;
        this.isQuitting = false;
        this.setListenerRunnable = new Runnable() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.3
            @Override // java.lang.Runnable
            public void run() {
                Log.d(SurfaceTextureHelper.TAG, "Setting listener to " + SurfaceTextureHelper.this.pendingListener);
                SurfaceTextureHelper surfaceTextureHelper = SurfaceTextureHelper.this;
                surfaceTextureHelper.listener = surfaceTextureHelper.pendingListener;
                SurfaceTextureHelper.this.pendingListener = null;
                if (SurfaceTextureHelper.this.hasPendingTexture) {
                    SurfaceTextureHelper.this.updateTexImage();
                    SurfaceTextureHelper.this.hasPendingTexture = false;
                }
            }
        };
        if (handler.getLooper().getThread() == Thread.currentThread()) {
            this.handler = handler;
            EglBase eglBaseCreate = EglBase.create(sharedContext, EglBase.CONFIG_PIXEL_BUFFER);
            this.eglBase = eglBaseCreate;
            try {
                eglBaseCreate.createDummyPbufferSurface();
                eglBaseCreate.makeCurrent();
                this.mCopyTo2DTexture = copyTo2DTexture;
                if (copyTo2DTexture) {
                    this.mWidth = width;
                    this.mHeight = height;
                    this.textureTransformer = new TextureTransformer(2);
                }
                int iGenerateTexture = GlUtil.generateTexture(36197);
                this.oesTextureId = iGenerateTexture;
                SurfaceTexture surfaceTexture = new SurfaceTexture(iGenerateTexture);
                this.surfaceTexture = surfaceTexture;
                setOnFrameAvailableListener(surfaceTexture, new SurfaceTexture.OnFrameAvailableListener() { // from class: io.agora.rtc.mediaio.SurfaceTextureHelper.5
                    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                    public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                        SurfaceTextureHelper.this.hasPendingTexture = true;
                        SurfaceTextureHelper.this.tryDeliverTextureFrame();
                    }
                }, handler);
                return;
            } catch (RuntimeException e) {
                Log.e(TAG, "SurfaceTextureHelper: failed to create pbufferSurface!!");
                this.eglBase.release();
                handler.getLooper().quit();
                throw e;
            }
        }
        throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
    }
}
