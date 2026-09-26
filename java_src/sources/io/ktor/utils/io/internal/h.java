package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class h {

    @NotNull
    private static final ByteBuffer EmptyByteBuffer;

    @NotNull
    private static final i EmptyCapacity;
    public static final int RESERVED_SIZE = 8;

    static {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(0);
        t.i(byteBufferAllocate, "allocate(0)");
        EmptyByteBuffer = byteBufferAllocate;
        EmptyCapacity = new i(0);
    }

    @NotNull
    public static final ByteBuffer a() {
        return EmptyByteBuffer;
    }

    @NotNull
    public static final i b() {
        return EmptyCapacity;
    }
}
