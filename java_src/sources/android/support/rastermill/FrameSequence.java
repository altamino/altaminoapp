package android.support.rastermill;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import com.narvii.util.Log;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class FrameSequence {
    private static final String TAG = "FrameSequence";
    private static boolean webpLoaderInstalled;
    private final int mDefaultLoopCount;
    private final int mFrameCount;
    private final int mHeight;
    private final long mNativeFrameSequence;
    private final boolean mOpaque;
    private final int mWidth;

    static class State {
        private long mNativeState;

        public void destroy() {
            if (this.mNativeState == 0 || !FrameSequence.webpLoaderInstalled) {
                return;
            }
            FrameSequence.nativeDestroyState(this.mNativeState);
            this.mNativeState = 0L;
        }

        public State(long j6) {
            this.mNativeState = j6;
        }

        public long getFrame(int i10, Bitmap bitmap, int i11) {
            if (!FrameSequence.webpLoaderInstalled) {
                return 0L;
            }
            if (bitmap != null && bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
                long j6 = this.mNativeState;
                if (j6 != 0) {
                    return FrameSequence.nativeGetFrame(j6, i10, bitmap, i11);
                }
                throw new IllegalStateException("attempted to draw destroyed FrameSequenceState");
            }
            throw new IllegalArgumentException("Bitmap passed must be non-null and ARGB_8888");
        }
    }

    @Nullable
    public static FrameSequence decodeByteArray(byte[] bArr) {
        return decodeByteArray(bArr, 0, bArr.length);
    }

    private static native long nativeCreateState(long j6);

    private static native FrameSequence nativeDecodeByteArray(byte[] bArr, int i10, int i11);

    private static native FrameSequence nativeDecodeByteBuffer(ByteBuffer byteBuffer, int i10, int i11);

    private static native FrameSequence nativeDecodeStream(InputStream inputStream, byte[] bArr);

    private static native void nativeDestroyFrameSequence(long j6);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeDestroyState(long j6);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeGetFrame(long j6, int i10, Bitmap bitmap, int i11);

    public int getDefaultLoopCount() {
        return this.mDefaultLoopCount;
    }

    public int getFrameCount() {
        return this.mFrameCount;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isOpaque() {
        return this.mOpaque;
    }

    static {
        try {
            System.loadLibrary("framesequence");
            webpLoaderInstalled = true;
        } catch (Throwable th) {
            Log.e(TAG, "CPU:" + Build.CPU_ABI);
            Log.e(th.getMessage());
        }
    }

    @Nullable
    public static FrameSequence decodeByteArray(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            throw new IllegalArgumentException();
        }
        if (i10 < 0 || i11 < 0 || i10 + i11 > bArr.length) {
            throw new IllegalArgumentException("invalid offset/length parameters");
        }
        if (webpLoaderInstalled) {
            return nativeDecodeByteArray(bArr, i10, i11);
        }
        return null;
    }

    @Nullable
    public static FrameSequence decodeByteBuffer(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            throw new IllegalArgumentException();
        }
        if (byteBuffer.isDirect()) {
            if (webpLoaderInstalled) {
                return nativeDecodeByteBuffer(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
            }
            return null;
        }
        if (byteBuffer.hasArray()) {
            return decodeByteArray(byteBuffer.array(), byteBuffer.position(), byteBuffer.remaining());
        }
        throw new IllegalArgumentException("Cannot have non-direct ByteBuffer with no byte array");
    }

    @Nullable
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
        long j6 = this.mNativeFrameSequence;
        if (j6 == 0) {
            throw new IllegalStateException("attempted to use incorrectly built FrameSequence");
        }
        long jNativeCreateState = nativeCreateState(j6);
        if (jNativeCreateState == 0) {
            return null;
        }
        return new State(jNativeCreateState);
    }

    protected void finalize() throws Throwable {
        try {
            long j6 = this.mNativeFrameSequence;
            if (j6 != 0 && webpLoaderInstalled) {
                nativeDestroyFrameSequence(j6);
            }
        } finally {
            super.finalize();
        }
    }

    private FrameSequence(long j6, int i10, int i11, boolean z6, int i12, int i13) {
        this.mNativeFrameSequence = j6;
        this.mWidth = i10;
        this.mHeight = i11;
        this.mOpaque = z6;
        this.mFrameCount = i12;
        this.mDefaultLoopCount = i13;
    }
}
