package io.agora.rtc.mediaio;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.TextureView;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import io.agora.rtc.gl.EglBase;
import io.agora.rtc.gl.RendererCommon;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public class AgoraTextureView extends TextureView implements IVideoSink, TextureView.SurfaceTextureListener {
    private static final String TAG = TextureView.class.getSimpleName();
    private int[] mConfigAttributes;
    private RendererCommon.GlDrawer mDrawer;
    private EglBase.Context mEglContext;
    private BaseVideoRenderer mRender;

    public AgoraTextureView(Context context) {
        super(context);
        BaseVideoRenderer baseVideoRenderer = new BaseVideoRenderer(TAG);
        this.mRender = baseVideoRenderer;
        baseVideoRenderer.setRenderView(this, this);
    }

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeTextureFrame(int texId, int format, int width, int height, int rotation, long ts, float[] matrix) {
        this.mRender.consume(texId, format, width, height, rotation, ts, matrix);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("io.agora", this, me);
        return super.dispatchTouchEvent(me);
    }

    public void init(EglBase.Context sharedContext) {
        this.mEglContext = sharedContext;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surface, int width, int height) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surface) {
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surface) {
    }

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeByteArrayFrame(byte[] data, int format, int width, int height, int rotation, long ts) {
        this.mRender.consume(data, format, width, height, rotation, ts);
    }

    @Override // io.agora.rtc.mediaio.IVideoFrameConsumer
    public void consumeByteBufferFrame(ByteBuffer buffer, int format, int width, int height, int rotation, long ts) {
        this.mRender.consume(buffer, format, width, height, rotation, ts);
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public int getBufferType() {
        int bufferType = this.mRender.getBufferType();
        if (bufferType != -1) {
            return bufferType;
        }
        throw new IllegalArgumentException("Buffer type is not set");
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public long getEGLContextHandle() {
        return this.mRender.getEGLContextHandle();
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public int getPixelFormat() {
        int pixelFormat = this.mRender.getPixelFormat();
        if (pixelFormat != -1) {
            return pixelFormat;
        }
        throw new IllegalArgumentException("Pixel format is not set");
    }

    public void init(final EglBase.Context sharedContext, final int[] configAttributes, RendererCommon.GlDrawer drawer) {
        this.mEglContext = sharedContext;
        this.mConfigAttributes = configAttributes;
        this.mDrawer = drawer;
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public void onDispose() {
        this.mRender.release();
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public boolean onInitialize() {
        RendererCommon.GlDrawer glDrawer;
        int[] iArr = this.mConfigAttributes;
        if (iArr == null || (glDrawer = this.mDrawer) == null) {
            this.mRender.init(this.mEglContext);
            return true;
        }
        this.mRender.init(this.mEglContext, iArr, glDrawer);
        return true;
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public boolean onStart() {
        return this.mRender.start();
    }

    @Override // io.agora.rtc.mediaio.IVideoSink
    public void onStop() {
        this.mRender.stop();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surface, int width, int height) {
        Log.e(TAG, "onSurfaceTextureSizeChanged: width- " + width + ", height: " + height);
    }

    public void setBufferType(MediaIO.BufferType bufferType) {
        this.mRender.setBufferType(bufferType);
    }

    public void setMirror(final boolean mirror) {
        this.mRender.getEglRender().setMirror(mirror);
    }

    public void setPixelFormat(MediaIO.PixelFormat pixelFormat) {
        this.mRender.setPixelFormat(pixelFormat);
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        ThreadUtils.checkIsOnMainThread();
        this.mRender.getEglRender().setLayoutAspectRatio((right - left) / (bottom - top));
    }

    public AgoraTextureView(Context context, AttributeSet attrs) {
        super(context, attrs);
        BaseVideoRenderer baseVideoRenderer = new BaseVideoRenderer(TAG);
        this.mRender = baseVideoRenderer;
        baseVideoRenderer.setRenderView(this, this);
    }
}
