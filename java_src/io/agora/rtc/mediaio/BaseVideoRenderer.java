package io.agora.rtc.mediaio;

import android.graphics.SurfaceTexture;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import io.agora.rtc.gl.EglBase;
import io.agora.rtc.gl.EglRenderer;
import io.agora.rtc.gl.GlRectDrawer;
import io.agora.rtc.gl.JavaI420Buffer;
import io.agora.rtc.gl.RendererCommon;
import io.agora.rtc.gl.RgbaBuffer;
import io.agora.rtc.gl.TextureBufferImpl;
import io.agora.rtc.gl.VideoFrame;
import io.agora.rtc.mediaio.MediaIO;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes4.dex */
public class BaseVideoRenderer implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener {
    private static final String ERROR_EGL = "Only one egl surface allowed";
    private static final String TAG = BaseVideoRenderer.class.getSimpleName();
    private final EglRenderer eglRenderer;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private TextureView.SurfaceTextureListener mSurfaceTextureListener;
    private SurfaceView mSurfaceView;
    private SurfaceHolder.Callback mSurfaceViewListener;
    private TextureView mTextureView;
    private int mBufferType = -1;
    private int mPixelFormat = -1;
    private boolean mHasEglSurface = false;
    private boolean mStarted = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseBuffer(ByteBuffer byteBuffer) {
    }

    public BaseVideoRenderer(String str) {
        this.eglRenderer = new EglRenderer(str);
    }

    public EglRenderer getEglRender() {
        return this.eglRenderer;
    }

    public long getEGLContextHandle() {
        return this.eglRenderer.getEglContext().getNativeEglContext();
    }

    public void init(EglBase.Context context) {
        init(context, EglBase.CONFIG_PLAIN, new GlRectDrawer());
    }

    public void init(EglBase.Context context, int[] iArr, RendererCommon.GlDrawer glDrawer) {
        this.eglRenderer.init(context, iArr, glDrawer);
    }

    public void setRenderView(SurfaceView surfaceView, SurfaceHolder.Callback callback) {
        ThreadUtils.checkIsOnMainThread();
        if (this.mHasEglSurface) {
            throw new IllegalStateException(ERROR_EGL);
        }
        this.mSurfaceView = surfaceView;
        this.mSurfaceViewListener = callback;
        this.mSurfaceView.getHolder().addCallback(this);
    }

    public void setRenderView(TextureView textureView, TextureView.SurfaceTextureListener surfaceTextureListener) {
        ThreadUtils.checkIsOnMainThread();
        if (this.mHasEglSurface) {
            throw new IllegalStateException(ERROR_EGL);
        }
        this.mTextureView = textureView;
        this.mSurfaceTextureListener = surfaceTextureListener;
        this.mTextureView.setSurfaceTextureListener(this);
    }

    public void setRenderSurface(Surface surface) {
        ThreadUtils.checkIsOnMainThread();
        if (this.mHasEglSurface) {
            throw new IllegalStateException(ERROR_EGL);
        }
        this.mSurface = surface;
        this.eglRenderer.createEglSurface(surface);
        this.mHasEglSurface = true;
    }

    public void setRenderSurface(SurfaceTexture surfaceTexture) {
        ThreadUtils.checkIsOnMainThread();
        if (this.mHasEglSurface) {
            throw new IllegalStateException(ERROR_EGL);
        }
        this.mSurfaceTexture = surfaceTexture;
        this.eglRenderer.createEglSurface(surfaceTexture);
        this.mHasEglSurface = true;
    }

    public void setBufferType(MediaIO.BufferType bufferType) {
        this.mBufferType = bufferType.intValue();
    }

    public void setPixelFormat(MediaIO.PixelFormat pixelFormat) {
        this.mPixelFormat = pixelFormat.intValue();
    }

    public void release() {
        this.eglRenderer.release();
    }

    public boolean start() {
        this.mStarted = true;
        return true;
    }

    public void stop() {
        this.mStarted = false;
    }

    public void consume(int i, int i2, int i3, int i4, int i5, long j, float[] fArr) {
        VideoFrame.TextureBuffer.Type type;
        if (this.mStarted) {
            if (i2 == 11) {
                type = VideoFrame.TextureBuffer.Type.OES;
            } else if (i2 != 10) {
                return;
            } else {
                type = VideoFrame.TextureBuffer.Type.RGB;
            }
            rendTextureFrame(i, type, i3, i4, i5, j, fArr);
        }
    }

    public void consume(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (this.mStarted) {
            if (i == 1) {
                rendI420Frame(byteBuffer, i, i2, i3, i4, j);
            } else if (i == 4) {
                rendRGBAFrame(byteBuffer, i, i2, i3, i4, j);
            }
        }
    }

    public void consume(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        if (this.mStarted) {
            if (i == 1) {
                rendI420Frame(bArr, i, i2, i3, i4, j);
            } else if (i == 4) {
                rendRGBAFrame(bArr, i, i2, i3, i4, j);
            }
        }
    }

    public int getBufferType() {
        int i = this.mBufferType;
        if (i != -1) {
            return i;
        }
        throw new IllegalArgumentException("Buffer type is not set");
    }

    public int getPixelFormat() {
        int i = this.mPixelFormat;
        if (i != -1) {
            return i;
        }
        throw new IllegalArgumentException("Pixel format is not set");
    }

    private void rendTextureFrame(int i, VideoFrame.TextureBuffer.Type type, int i2, int i3, int i4, long j, float[] fArr) {
        VideoFrame videoFrame = new VideoFrame(new TextureBufferImpl(i2, i3, type, i, RendererCommon.convertMatrixToAndroidGraphicsMatrix(fArr), null, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.1
            @Override // java.lang.Runnable
            public void run() {
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendI420Frame(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (byteBuffer == null) {
            return;
        }
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr, 0, bArr.length);
        JavaI420Buffer javaI420BufferCreateYUV = JavaI420Buffer.createYUV(bArr, i2, i3);
        if (javaI420BufferCreateYUV == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(javaI420BufferCreateYUV, i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendI420Frame(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        JavaI420Buffer javaI420BufferCreateYUV;
        if (bArr == null || bArr.length == 0 || (javaI420BufferCreateYUV = JavaI420Buffer.createYUV(bArr, i2, i3)) == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(javaI420BufferCreateYUV, i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendRGBAFrame(final ByteBuffer byteBuffer, int i, int i2, int i3, int i4, long j) {
        if (byteBuffer == null) {
            return;
        }
        VideoFrame videoFrame = new VideoFrame(new RgbaBuffer(byteBuffer, i2, i3, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.2
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoRenderer.this.releaseBuffer(byteBuffer);
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    private void rendRGBAFrame(byte[] bArr, int i, int i2, int i3, int i4, long j) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        final ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        VideoFrame videoFrame = new VideoFrame(new RgbaBuffer(byteBufferWrap, i2, i3, new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.3
            @Override // java.lang.Runnable
            public void run() {
                BaseVideoRenderer.this.releaseBuffer(byteBufferWrap);
            }
        }), i4, j);
        this.eglRenderer.renderFrame(videoFrame);
        videoFrame.release();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.createEglSurface(surfaceHolder.getSurface());
        this.mHasEglSurface = true;
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceCreated(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        ThreadUtils.checkIsOnMainThread();
        Log.e(TAG, "surfaceChanged: format: " + i + " size: " + i2 + "x" + i3);
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceChanged(surfaceHolder, i, i2, i3);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        ThreadUtils.checkIsOnMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.eglRenderer.releaseEglSurface(new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.4
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        SurfaceHolder.Callback callback = this.mSurfaceViewListener;
        if (callback != null) {
            callback.surfaceDestroyed(surfaceHolder);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        ThreadUtils.checkIsOnMainThread();
        this.eglRenderer.createEglSurface(surfaceTexture);
        this.mHasEglSurface = true;
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        Log.e(TAG, "onSurfaceTextureSizeChanged: width- " + i + ", height: " + i2);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        ThreadUtils.checkIsOnMainThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.eglRenderer.releaseEglSurface(new Runnable() { // from class: io.agora.rtc.mediaio.BaseVideoRenderer.5
            @Override // java.lang.Runnable
            public void run() {
                countDownLatch.countDown();
            }
        });
        ThreadUtils.awaitUninterruptibly(countDownLatch);
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureDestroyed(surfaceTexture);
        }
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        TextureView.SurfaceTextureListener surfaceTextureListener = this.mSurfaceTextureListener;
        if (surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureUpdated(surfaceTexture);
        }
    }
}
