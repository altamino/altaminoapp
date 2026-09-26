package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class e {
    private static final int BUFFER_OBJECT_POOL_SIZE;
    private static final int BUFFER_POOL_SIZE;
    private static final int BUFFER_SIZE;

    @NotNull
    private static final t7.g<g.c> BufferObjectNoPool;

    @NotNull
    private static final t7.g<g.c> BufferObjectPool;

    @NotNull
    private static final t7.g<ByteBuffer> BufferPool;

    public static final class a extends t7.f<g.c> {
        @Override // t7.g
        @NotNull
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public g.c s0() {
            ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(e.a());
            t.i(byteBufferAllocateDirect, "allocateDirect(BUFFER_SIZE)");
            return new g.c(byteBufferAllocateDirect, 0, 2, null);
        }

        a() {
        }
    }

    public static final class b extends t7.d<g.c> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // t7.d
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public void e(@NotNull g.c instance) {
            t.j(instance, "instance");
            e.d().S(instance.backingBuffer);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // t7.d
        @NotNull
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public g.c k() {
            return new g.c(e.d().s0(), 0, 2, null);
        }

        b(int i10) {
            super(i10);
        }
    }

    public static final int a() {
        return BUFFER_SIZE;
    }

    @NotNull
    public static final t7.g<g.c> b() {
        return BufferObjectNoPool;
    }

    @NotNull
    public static final t7.g<g.c> c() {
        return BufferObjectPool;
    }

    @NotNull
    public static final t7.g<ByteBuffer> d() {
        return BufferPool;
    }

    static {
        int iA = k.a("BufferSize", 4096);
        BUFFER_SIZE = iA;
        int iA2 = k.a("BufferPoolSize", 2048);
        BUFFER_POOL_SIZE = iA2;
        int iA3 = k.a("BufferObjectPoolSize", 1024);
        BUFFER_OBJECT_POOL_SIZE = iA3;
        BufferPool = new t7.e(iA2, iA);
        BufferObjectPool = new b(iA3);
        BufferObjectNoPool = new a();
    }
}
