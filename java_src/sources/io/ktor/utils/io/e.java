package io.ktor.utils.io;

import java.nio.ByteBuffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    public static final class a extends io.ktor.utils.io.a {
        final /* synthetic */ e8.l<Throwable, Throwable> $exceptionMapper;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(boolean z6, e8.l<? super Throwable, ? extends Throwable> lVar) {
            super(z6, null, 0, 6, null);
            this.$exceptionMapper = lVar;
        }

        @Override // io.ktor.utils.io.a, io.ktor.utils.io.j
        public boolean c(@Nullable Throwable th) {
            return super.c(this.$exceptionMapper.invoke(th));
        }
    }

    @NotNull
    public static final c a(boolean z6) {
        return new io.ktor.utils.io.a(z6, null, 0, 6, null);
    }

    @NotNull
    public static final c b(boolean z6, @NotNull e8.l<? super Throwable, ? extends Throwable> exceptionMapper) {
        kotlin.jvm.internal.t.j(exceptionMapper, "exceptionMapper");
        return new a(z6, exceptionMapper);
    }

    public static /* synthetic */ c c(boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return a(z6);
    }

    public static /* synthetic */ c d(boolean z6, e8.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return b(z6, lVar);
    }

    @NotNull
    public static final g e(@NotNull byte[] content, int i10, int i11) {
        kotlin.jvm.internal.t.j(content, "content");
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(content, i10, i11);
        kotlin.jvm.internal.t.i(byteBufferWrap, "wrap(content, offset, length)");
        return new io.ktor.utils.io.a(byteBufferWrap);
    }
}
