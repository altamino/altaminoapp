package io.ktor.utils.io;

import java.nio.ByteBuffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public interface g {

    @NotNull
    public static final a Companion = a.$$INSTANCE;

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();

        @NotNull
        private static final w7.m<c> Empty$delegate = w7.o.a(C0414a.INSTANCE);

        /* JADX INFO: renamed from: io.ktor.utils.io.g$a$a, reason: collision with other inner class name */
        static final class C0414a extends kotlin.jvm.internal.v implements e8.a<c> {
            public static final C0414a INSTANCE = new C0414a();

            C0414a() {
                super(0);
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final c invoke() {
                c cVarC = e.c(false, 1, null);
                k.a(cVarC);
                return cVarC;
            }
        }

        @NotNull
        public final g a() {
            return Empty$delegate.getValue();
        }

        private a() {
        }
    }

    public static final class b {
        public static /* synthetic */ Object a(g gVar, long j6, kotlin.coroutines.d dVar, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readRemaining");
            }
            if ((i10 & 1) != 0) {
                j6 = Long.MAX_VALUE;
            }
            return gVar.i(j6, dVar);
        }
    }

    boolean e(@Nullable Throwable th);

    int f();

    @Nullable
    Object g(@NotNull s7.a aVar, @NotNull kotlin.coroutines.d<? super Integer> dVar);

    @Nullable
    Object i(long j6, @NotNull kotlin.coroutines.d<? super r7.j> dVar);

    @Nullable
    Throwable j();

    @Nullable
    Object k(@NotNull byte[] bArr, int i10, int i11, @NotNull kotlin.coroutines.d<? super Integer> dVar);

    @Nullable
    Object l(int i10, @NotNull e8.l<? super ByteBuffer, l0> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar);

    boolean o();
}
