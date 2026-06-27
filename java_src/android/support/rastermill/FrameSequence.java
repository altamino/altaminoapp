package android.support.rastermill;

import android.graphics.Bitmap;
import android.os.Build;
import com.narvii.util.Log;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class FrameSequence {
    private static final String TAG = "FrameSequence";
    private static boolean webpLoaderInstalled;
    private final int mDefaultLoopCount;
    private final int mFrameCount;
    private final int mHeight;
    private final long mNativeFrameSequence;
    private final boolean mOpaque;
    private final int mWidth;

    private static native long nativeCreateState(long j);

    private static native FrameSequence nativeDecodeByteArray(byte[] bArr, int i, int i2);

    private static native FrameSequence nativeDecodeByteBuffer(ByteBuffer byteBuffer, int i, int i2);

    private static native FrameSequence nativeDecodeStream(InputStream inputStream, byte[] bArr);

    private static native void nativeDestroyFrameSequence(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeDestroyState(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeGetFrame(long j, int i, Bitmap bitmap, int i2);

    static {
        try {
            System.loadLibrary("framesequence");
            webpLoaderInstalled = true;
        } catch (Throwable th) {
            Log.e(TAG, "CPU:" + Build.CPU_ABI);
            Log.e(th.getMessage());
        }
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public boolean isOpaque() {
        return this.mOpaque;
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int getDefaultLoopCount() {
        return this.mDefaultLoopCount;
    }

    private FrameSequence(long j, int i, int i2, boolean z, int i3, int i4) {
        this.mNativeFrameSequence = j;
        this.mWidth = i;
        this.mHeight = i2;
        this.mOpaque = z;
        this.mFrameCount = i3;
        this.mDefaultLoopCount = i4;
    }

    public static FrameSequence decodeByteArray(byte[] bArr) {
        return decodeByteArray(bArr, 0, bArr.length);
    }

    public static FrameSequence decodeByteArray(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException();
        }
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new IllegalArgumentException("invalid offset/length parameters");
        }
        if (webpLoaderInstalled) {
            return nativeDecodeByteArray(bArr, i, i2);
        }
        return null;
    }

    public static FrameSequence decodeByteBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException();
        }
        if (!byteBuffer.isDirect()) {
            if (byteBuffer.hasArray()) {
                return decodeByteArray(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining());
            }
            throw new IllegalArgumentException("Cannot have non-direct ByteBuffer with no byte array");
        }
        if (webpLoaderInstalled) {
            return nativeDecodeByteBuffer(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
        }
        return null;
    }

    public static FrameSequence decodeStream(InputStream inputStream) {
        if (inputStream == null) {
            throw new IllegalArgumentException();
        }
        byte[] bArr = new byte[16384];
        if (webpLoaderInstalled) {
            return nativeDecodeStream(inputStream, bArr);
        }
        return null;
    }

    State createState() {
        if (!webpLoaderInstalled) {
            return null;
        }
        long j = this.mNativeFrameSequence;
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
        try {
            if (this.mNativeFrameSequence != 0 && webpLoaderInstalled) {
                nativeDestroyFrameSequence(this.mNativeFrameSequence);
            }
        } finally {
            super.finalize();
        }
    }

    static class State {
        private long mNativeState;

        public State(long j) {
            this.mNativeState = j;
        }

        public void destroy() {
            if (this.mNativeState == 0 || !FrameSequence.webpLoaderInstalled) {
                return;
            }
            FrameSequence.nativeDestroyState(this.mNativeState);
            this.mNativeState = 0L;
        }

        public long getFrame(int i, Bitmap bitmap, int i2) {
            if (!FrameSequence.webpLoaderInstalled) {
                return 0L;
            }
            if (bitmap == null || bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
                throw new IllegalArgumentException("Bitmap passed must be non-null and ARGB_8888");
            }
            long j = this.mNativeState;
            if (j != 0) {
                return FrameSequence.nativeGetFrame(j, i, bitmap, i2);
            }
            throw new IllegalStateException("attempted to draw destroyed FrameSequenceState");
        }
    }
}
