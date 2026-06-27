package com.meishe.cafconvertor.webpcoder;

import android.graphics.Bitmap;
import android.util.Log;

/* loaded from: classes2.dex */
public class FrameSequence {
    private long a;
    private int b;

    static class State {
        private long a;

        public State(long j) {
            this.a = j;
        }

        public void destroy() {
            Log.d("FrameSequence", "State destroy: mNativeState is " + this.a);
            long j = this.a;
            if (j != 0) {
                FrameSequence.nativeDestroyState(j);
                this.a = 0L;
            }
        }

        public long getFrame(int i, Bitmap bitmap, int i2) {
            if (bitmap == null || bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
                throw new IllegalArgumentException("Bitmap passed must be non-null and ARGB_8888");
            }
            long j = this.a;
            if (j != 0) {
                return FrameSequence.nativeGetFrame(j, i, bitmap, i2);
            }
            throw new IllegalStateException("attempted to draw destroyed FrameSequenceState");
        }
    }

    static {
        System.loadLibrary("nvs-webp");
    }

    public FrameSequence() {
    }

    public FrameSequence(long j) {
        this.a = j;
    }

    public static FrameSequence decodeByteArray(byte[] bArr) {
        return new FrameSequence(nativeDecodeByteArray(bArr, 0, bArr.length));
    }

    private static native int getFrameCount(long j);

    private static native int getHeight(long j);

    private static native int getWidth(long j);

    private static native boolean isOpaque(long j);

    private static native long nativeCreateState(long j);

    private static native long nativeDecodeByteArray(byte[] bArr, int i, int i2);

    public static native void nativeDestroyFrameSequence(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeDestroyState(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeGetFrame(long j, int i, Bitmap bitmap, int i2);

    State a() {
        long j = this.a;
        if (j == 0) {
            throw new IllegalStateException("attempted to use incorrectly built FrameSequence");
        }
        long jNativeCreateState = nativeCreateState(j);
        if (jNativeCreateState == 0) {
            return null;
        }
        return new State(jNativeCreateState);
    }

    protected void finalize() throws Throwable {
        Log.d("FrameSequence", "finalize: mNativeFrameSequence is " + this.a);
        try {
            if (this.a != 0) {
                nativeDestroyFrameSequence(this.a);
            }
        } finally {
            super.finalize();
        }
    }

    public int getDefaultLoopCount() {
        return this.b;
    }

    public int getFrameCount() {
        return getFrameCount(this.a);
    }

    public int getHeight() {
        return getHeight(this.a);
    }

    public int getWidth() {
        return getWidth(this.a);
    }

    public boolean isOpaque() {
        return isOpaque(this.a);
    }

    public void setDefaultLoopCount(int i) {
        this.b = i;
    }
}
