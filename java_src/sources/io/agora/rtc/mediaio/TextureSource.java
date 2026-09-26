package io.agora.rtc.mediaio;

import android.graphics.SurfaceTexture;
import io.agora.rtc.gl.EglBase;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes7.dex */
public abstract class TextureSource implements IVideoSource, SurfaceTextureHelper.OnTextureFrameAvailableListener {
    protected WeakReference<IVideoFrameConsumer> mConsumer;
    protected int mHeight;
    protected int mPixelFormat = 11;
    protected SurfaceTextureHelper mSurfaceTextureHelper;
    protected int mWidth;

    public TextureSource(EglBase.Context sharedContext, int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        SurfaceTextureHelper surfaceTextureHelperCreate = SurfaceTextureHelper.create("TexCamThread", sharedContext);
        this.mSurfaceTextureHelper = surfaceTextureHelperCreate;
        surfaceTextureHelperCreate.getSurfaceTexture().setDefaultBufferSize(width, height);
        this.mSurfaceTextureHelper.startListening(this);
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getBufferType() {
        return 3;
    }

    protected abstract void onCapturerClosed();

    protected abstract boolean onCapturerOpened();

    protected abstract boolean onCapturerStarted();

    protected abstract void onCapturerStopped();

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onDispose() {
        this.mConsumer = null;
        onCapturerClosed();
    }

    public void onTextureFrameAvailable(int oesTextureId, float[] transformMatrix, long timestampNs) {
        this.mSurfaceTextureHelper.returnTextureFrame();
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getCaptureType() {
        return MediaIO.CaptureType.CAMERA.intValue();
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public int getContentHint() {
        return MediaIO.ContentHint.NONE.intValue();
    }

    public EglBase.Context getEglContext() {
        return this.mSurfaceTextureHelper.getEglContext();
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.mSurfaceTextureHelper.getSurfaceTexture();
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onInitialize(IVideoFrameConsumer observer) {
        this.mConsumer = new WeakReference<>(observer);
        return onCapturerOpened();
    }

    public void onTextureFrameAvailable(int texId, MediaIO.PixelFormat format, float[] transformMatrix, long timestampNs) {
        this.mSurfaceTextureHelper.returnTextureFrame();
    }

    public void release() {
        this.mSurfaceTextureHelper.stopListening();
        this.mSurfaceTextureHelper.dispose();
        this.mSurfaceTextureHelper = null;
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public boolean onStart() {
        return onCapturerStarted();
    }

    @Override // io.agora.rtc.mediaio.IVideoSource
    public void onStop() {
        onCapturerStopped();
    }

    public TextureSource(EglBase.Context sharedContext, int width, int height, boolean copyOesTo2DTex) {
        this.mWidth = width;
        this.mHeight = height;
        SurfaceTextureHelper surfaceTextureHelperCreate = SurfaceTextureHelper.create("TexCamThreadOesTo2D", sharedContext, copyOesTo2DTex, width, height);
        this.mSurfaceTextureHelper = surfaceTextureHelperCreate;
        surfaceTextureHelperCreate.getSurfaceTexture().setDefaultBufferSize(width, height);
        this.mSurfaceTextureHelper.startListening(this);
    }
}
