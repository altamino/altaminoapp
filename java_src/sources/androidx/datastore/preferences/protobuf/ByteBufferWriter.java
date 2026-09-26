package androidx.datastore.preferences.protobuf;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes10.dex */
final class ByteBufferWriter {
    private static final ThreadLocal<SoftReference<byte[]>> BUFFER = new ThreadLocal<>();
    private static final float BUFFER_REALLOCATION_THRESHOLD = 0.5f;
    private static final long CHANNEL_FIELD_OFFSET;
    private static final Class<?> FILE_OUTPUT_STREAM_CLASS;
    private static final int MAX_CACHED_BUFFER_SIZE = 16384;
    private static final int MIN_CACHED_BUFFER_SIZE = 1024;

    static {
        Class<?> clsB = b("java.io.FileOutputStream");
        FILE_OUTPUT_STREAM_CLASS = clsB;
        CHANNEL_FIELD_OFFSET = a(clsB);
    }

    private static long a(Class<?> cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (UnsafeUtil.H()) {
                return UnsafeUtil.J(cls.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private ByteBufferWriter() {
    }

    private static Class<?> b(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
