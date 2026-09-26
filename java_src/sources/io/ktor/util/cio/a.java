package io.ktor.util.cio;

import java.nio.ByteBuffer;
import org.jetbrains.annotations.NotNull;
import t7.g;

/* JADX INFO: loaded from: classes10.dex */
public final class a {
    public static final int DEFAULT_BUFFER_SIZE = 4098;
    public static final int DEFAULT_KTOR_POOL_SIZE = 2048;

    @NotNull
    private static final g<ByteBuffer> KtorDefaultPool = new t7.b(2048, 4098);

    @NotNull
    public static final g<ByteBuffer> a() {
        return KtorDefaultPool;
    }
}
