package io.agora.rtc.video;

import java.nio.ByteBuffer;

/* loaded from: classes4.dex */
public class VideoRenderer {
    long nativeVideoRenderer;

    public interface Callbacks {
        void renderFrame(I420Frame i420Frame);
    }

    private static native void freeWrappedVideoRenderer(long j);

    public static native void nativeCopyPlane(ByteBuffer byteBuffer, int i, int i2, int i3, ByteBuffer byteBuffer2, int i4);

    private static native long nativeWrapVideoRenderer(Callbacks callbacks);

    private static native void releaseNativeFrame(long j);

    public static class I420Frame {
        public final int height;
        private long nativeFramePointer;
        public int rotationDegree;
        public final float[] samplingMatrix;
        public int textureId;
        public final int width;
        public final boolean yuvFrame;
        public ByteBuffer[] yuvPlanes;
        public final int[] yuvStrides;

        I420Frame(int i, int i2, int i3, int[] iArr, ByteBuffer[] byteBufferArr, long j) {
            this.width = i;
            this.height = i2;
            this.yuvStrides = iArr;
            this.yuvPlanes = byteBufferArr;
            this.yuvFrame = true;
            this.rotationDegree = i3;
            this.nativeFramePointer = j;
            if (i3 % 90 == 0) {
                this.samplingMatrix = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 1.0f};
                return;
            }
            throw new IllegalArgumentException("Rotation degree not multiple of 90: " + i3);
        }

        I420Frame(int i, int i2, int i3, int i4, float[] fArr, long j) {
            this.width = i;
            this.height = i2;
            this.yuvStrides = null;
            this.yuvPlanes = null;
            this.samplingMatrix = fArr;
            this.textureId = i4;
            this.yuvFrame = false;
            this.rotationDegree = i3;
            this.nativeFramePointer = j;
            if (i3 % 90 == 0) {
                return;
            }
            throw new IllegalArgumentException("Rotation degree not multiple of 90: " + i3);
        }

        public int rotatedWidth() {
            return this.rotationDegree % 180 == 0 ? this.width : this.height;
        }

        public int rotatedHeight() {
            return this.rotationDegree % 180 == 0 ? this.height : this.width;
        }

        public String toString() {
            return this.width + "x" + this.height + ":" + this.yuvStrides[0] + ":" + this.yuvStrides[1] + ":" + this.yuvStrides[2];
        }
    }

    public static void renderFrameDone(I420Frame i420Frame) {
        i420Frame.yuvPlanes = null;
        i420Frame.textureId = 0;
        if (i420Frame.nativeFramePointer != 0) {
            releaseNativeFrame(i420Frame.nativeFramePointer);
            i420Frame.nativeFramePointer = 0L;
        }
    }

    public VideoRenderer(Callbacks callbacks) {
        this.nativeVideoRenderer = nativeWrapVideoRenderer(callbacks);
    }

    public void dispose() {
        long j = this.nativeVideoRenderer;
        if (j == 0) {
            return;
        }
        freeWrappedVideoRenderer(j);
        this.nativeVideoRenderer = 0L;
    }
}
