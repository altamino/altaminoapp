package io.agora.rtc.gl;

import io.agora.rtc.gl.VideoFrame;
import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
public class JavaI420Buffer implements VideoFrame.I420Buffer {
    private final ByteBuffer dataU;
    private final ByteBuffer dataV;
    private final ByteBuffer dataY;
    private final int height;
    private final Runnable releaseCallback;
    private final int strideU;
    private final int strideV;
    private final int strideY;
    private final int width;
    private final Object refCountLock = new Object();
    private int refCount = 1;

    private JavaI420Buffer(int i, int i2, ByteBuffer byteBuffer, int i3, ByteBuffer byteBuffer2, int i4, ByteBuffer byteBuffer3, int i5, Runnable runnable) {
        this.width = i;
        this.height = i2;
        this.dataY = byteBuffer;
        this.dataU = byteBuffer2;
        this.dataV = byteBuffer3;
        this.strideY = i3;
        this.strideU = i4;
        this.strideV = i5;
        this.releaseCallback = runnable;
    }

    public static JavaI420Buffer wrap(int i, int i2, ByteBuffer byteBuffer, int i3, ByteBuffer byteBuffer2, int i4, ByteBuffer byteBuffer3, int i5, Runnable runnable) {
        if (byteBuffer == null || byteBuffer2 == null || byteBuffer3 == null) {
            throw new IllegalArgumentException("Data buffers cannot be null.");
        }
        if (!byteBuffer.isDirect() || !byteBuffer2.isDirect() || !byteBuffer3.isDirect()) {
            throw new IllegalArgumentException("Data buffers must be direct byte buffers.");
        }
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        ByteBuffer byteBufferSlice2 = byteBuffer2.slice();
        ByteBuffer byteBufferSlice3 = byteBuffer3.slice();
        int i6 = (i2 + 1) / 2;
        int i7 = i3 * i2;
        int i8 = i4 * i6;
        int i9 = i6 * i5;
        if (byteBufferSlice.capacity() < i7) {
            throw new IllegalArgumentException("Y-buffer must be at least " + i7 + " bytes.");
        }
        if (byteBufferSlice2.capacity() < i8) {
            throw new IllegalArgumentException("U-buffer must be at least " + i8 + " bytes.");
        }
        if (byteBufferSlice3.capacity() < i9) {
            throw new IllegalArgumentException("V-buffer must be at least " + i9 + " bytes.");
        }
        return new JavaI420Buffer(i, i2, byteBufferSlice, i3, byteBufferSlice2, i4, byteBufferSlice3, i5, runnable);
    }

    public static JavaI420Buffer createYUV(byte[] bArr, int i, int i2) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        JavaI420Buffer javaI420BufferAllocate = allocate(i, i2);
        ByteBuffer dataY = javaI420BufferAllocate.getDataY();
        ByteBuffer dataU = javaI420BufferAllocate.getDataU();
        ByteBuffer dataV = javaI420BufferAllocate.getDataV();
        int i3 = (i2 + 1) / 2;
        int strideY = i2 * javaI420BufferAllocate.getStrideY();
        int strideU = javaI420BufferAllocate.getStrideU() * i3;
        int strideV = i3 * javaI420BufferAllocate.getStrideV();
        dataY.put(bArr, 0, strideY);
        dataU.put(bArr, strideY, strideU);
        dataV.put(bArr, strideY + strideU, strideV);
        return javaI420BufferAllocate;
    }

    public static JavaI420Buffer allocate(int i, int i2) {
        int i3 = (i2 + 1) / 2;
        int i4 = (i + 1) / 2;
        int i5 = i * i2;
        int i6 = i5 + 0;
        int i7 = i4 * i3;
        int i8 = i6 + i7;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(i5 + (i4 * 2 * i3));
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.limit(i6);
        ByteBuffer byteBufferSlice = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i6);
        byteBufferAllocateDirect.limit(i8);
        ByteBuffer byteBufferSlice2 = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i8);
        byteBufferAllocateDirect.limit(i8 + i7);
        return new JavaI420Buffer(i, i2, byteBufferSlice, i, byteBufferSlice2, i4, byteBufferAllocateDirect.slice(), i4, null);
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getWidth() {
        return this.width;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getHeight() {
        return this.height;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public ByteBuffer getDataY() {
        return this.dataY.slice();
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public ByteBuffer getDataU() {
        return this.dataU.slice();
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public ByteBuffer getDataV() {
        return this.dataV.slice();
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideY() {
        return this.strideY;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideU() {
        return this.strideU;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideV() {
        return this.strideV;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.I420Buffer toI420() {
        retain();
        return this;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public void retain() {
        synchronized (this.refCountLock) {
            this.refCount++;
        }
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public void release() {
        synchronized (this.refCountLock) {
            int i = this.refCount - 1;
            this.refCount = i;
            if (i == 0 && this.releaseCallback != null) {
                this.releaseCallback.run();
            }
        }
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.Buffer cropAndScale(int i, int i2, int i3, int i4, int i5, int i6) {
        return VideoFrame.cropAndScaleI420(this, i, i2, i3, i4, i5, i6);
    }
}
