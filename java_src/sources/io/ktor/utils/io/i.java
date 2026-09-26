package io.ktor.utils.io;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class i {

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.utils.io.ByteReadChannelKt", f = "ByteReadChannel.kt", l = {261}, m = "copyAndClose")
    static final class a extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        a(kotlin.coroutines.d<? super a> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return i.b(null, null, 0L, this);
        }
    }

    @Nullable
    public static final Object d(@NotNull g gVar, @NotNull byte[] bArr, @NotNull kotlin.coroutines.d<? super Integer> dVar) {
        return gVar.k(bArr, 0, bArr.length, dVar);
    }

    public static final boolean a(@NotNull g gVar) {
        kotlin.jvm.internal.t.j(gVar, "<this>");
        return gVar.e(null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object b(@NotNull g gVar, @NotNull j jVar, long j6, @NotNull kotlin.coroutines.d<? super Long> dVar) {
        a aVar;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.label = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object objB = aVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar.label;
        if (i11 == 0) {
            w7.w.b(objB);
            aVar.L$0 = jVar;
            aVar.label = 1;
            objB = h.b(gVar, jVar, j6, aVar);
            if (objB == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jVar = (j) aVar.L$0;
            w7.w.b(objB);
        }
        long jLongValue = ((Number) objB).longValue();
        k.a(jVar);
        return kotlin.coroutines.jvm.internal.b.e(jLongValue);
    }

    public static /* synthetic */ Object c(g gVar, j jVar, long j6, kotlin.coroutines.d dVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = Long.MAX_VALUE;
        }
        return b(gVar, jVar, j6, dVar);
    }
}
