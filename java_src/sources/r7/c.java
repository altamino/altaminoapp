package r7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public static final int DEFAULT_BUFFER_SIZE = 4096;

    @NotNull
    private static final t7.g<s7.a> DefaultChunkedBufferPool = new l(0, 0, null, 7, null);

    @NotNull
    public static final t7.g<s7.a> a() {
        return DefaultChunkedBufferPool;
    }
}
