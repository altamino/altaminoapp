package io.agora.rtc.gl;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
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

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getHeight() {
        return this.height;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideU() {
        return this.strideU;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideV() {
        return this.strideV;
    }

    @Override // io.agora.rtc.gl.VideoFrame.I420Buffer
    public int getStrideY() {
        return this.strideY;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public int getWidth() {
        return this.width;
    }

    public static JavaI420Buffer allocate(int width, int height) {
        int i10 = (height + 1) / 2;
        int i11 = (width + 1) / 2;
        int i12 = width * height;
        int i13 = i11 * i10;
        int i14 = i12 + i13;
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect((i11 * 2 * i10) + i12);
        byteBufferAllocateDirect.position(0);
        byteBufferAllocateDirect.limit(i12);
        ByteBuffer byteBufferSlice = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i12);
        byteBufferAllocateDirect.limit(i14);
        ByteBuffer byteBufferSlice2 = byteBufferAllocateDirect.slice();
        byteBufferAllocateDirect.position(i14);
        byteBufferAllocateDirect.limit(i14 + i13);
        return new JavaI420Buffer(width, height, byteBufferSlice, width, byteBufferSlice2, i11, byteBufferAllocateDirect.slice(), i11, null);
    }

    public static JavaI420Buffer createYUV(byte[] data, int width, int height) {
        if (data == null || data.length == 0) {
            return null;
        }
        JavaI420Buffer javaI420BufferAllocate = allocate(width, height);
        ByteBuffer dataY = javaI420BufferAllocate.getDataY();
        ByteBuffer dataU = javaI420BufferAllocate.getDataU();
        ByteBuffer dataV = javaI420BufferAllocate.getDataV();
        int i10 = (height + 1) / 2;
        int strideY = height * javaI420BufferAllocate.getStrideY();
        int strideU = javaI420BufferAllocate.getStrideU() * i10;
        int strideV = i10 * javaI420BufferAllocate.getStrideV();
        dataY.put(data, 0, strideY);
        dataU.put(data, strideY, strideU);
        dataV.put(data, strideY + strideU, strideV);
        return javaI420BufferAllocate;
    }

    public static JavaI420Buffer wrap(int width, int height, ByteBuffer dataY, int strideY, ByteBuffer dataU, int strideU, ByteBuffer dataV, int strideV, Runnable releaseCallback) {
        if (dataY == null || dataU == null || dataV == null) {
            throw new IllegalArgumentException("Data buffers cannot be null.");
        }
        if (!dataY.isDirect() || !dataU.isDirect() || !dataV.isDirect()) {
            throw new IllegalArgumentException("Data buffers must be direct byte buffers.");
        }
        ByteBuffer byteBufferSlice = dataY.slice();
        ByteBuffer byteBufferSlice2 = dataU.slice();
        ByteBuffer byteBufferSlice3 = dataV.slice();
        int i10 = (height + 1) / 2;
        int i11 = strideY * height;
        int i12 = strideU * i10;
        int i13 = i10 * strideV;
        if (byteBufferSlice.capacity() < i11) {
            throw new IllegalArgumentException("Y-buffer must be at least " + i11 + " bytes.");
        }
        if (byteBufferSlice2.capacity() < i12) {
            throw new IllegalArgumentException("U-buffer must be at least " + i12 + " bytes.");
        }
        if (byteBufferSlice3.capacity() >= i13) {
            return new JavaI420Buffer(width, height, byteBufferSlice, strideY, byteBufferSlice2, strideU, byteBufferSlice3, strideV, releaseCallback);
        }
        throw new IllegalArgumentException("V-buffer must be at least " + i13 + " bytes.");
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
    public ByteBuffer getDataY() {
        return this.dataY.slice();
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

    private JavaI420Buffer(int width, int height, ByteBuffer dataY, int strideY, ByteBuffer dataU, int strideU, ByteBuffer dataV, int strideV, Runnable releaseCallback) {
        this.width = width;
        this.height = height;
        this.dataY = dataY;
        this.dataU = dataU;
        this.dataV = dataV;
        this.strideY = strideY;
        this.strideU = strideU;
        this.strideV = strideV;
        this.releaseCallback = releaseCallback;
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.Buffer cropAndScale(int cropX, int cropY, int cropWidth, int cropHeight, int scaleWidth, int scaleHeight) {
        return VideoFrame.cropAndScaleI420(this, cropX, cropY, cropWidth, cropHeight, scaleWidth, scaleHeight);
    }

    @Override // io.agora.rtc.gl.VideoFrame.Buffer
    public VideoFrame.I420Buffer toI420() {
        retain();
        return this;
    }
}
