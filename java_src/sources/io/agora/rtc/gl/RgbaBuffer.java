package io.agora.rtc.gl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class RgbaBuffer implements VideoFrame.Buffer {
    private final ByteBuffer mBuffer;
    private int mHeight;
    private int mWidth;
    private int refCount;
    private final Object refCountLock = new Object();
    private final Runnable releaseCallback;

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.Buffer cropAndScale(int cropX, int cropY, int cropWidth, int cropHeight, int scaleWidth, int scaleHeight) {
        return null;
    }

    public ByteBuffer getBuffer() {
        return this.mBuffer;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getHeight() {
        return this.mHeight;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getWidth() {
        return this.mWidth;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.I420Buffer toI420() {
        return null;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public void release() {
        Runnable runnable;
        synchronized (this.refCountLock) {
            try {
                int i10 = this.refCount - 1;
                this.refCount = i10;
                if (i10 == 0 && (runnable = this.releaseCallback) != null) {
                    runnable.run();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public void retain() {
        synchronized (this.refCountLock) {
            this.refCount++;
        }
    }

    public RgbaBuffer(ByteBuffer buffer, int width, int height, Runnable releaseCallback) {
        this.mBuffer = buffer;
        this.mWidth = width;
        this.mHeight = height;
        this.releaseCallback = releaseCallback;
    }
}
