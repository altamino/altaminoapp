package io.ktor.util;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class f {
    private static final long CHUNK_BUFFER_SIZE = 4096;

    @kotlin.coroutines.jvm.internal.f(c = "io.ktor.util.ByteChannelsKt", f = "ByteChannels.kt", l = {91}, m = "toByteArray")
    static final class a extends kotlin.coroutines.jvm.internal.d {
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
            return f.a(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    @Nullable
    public static final Object a(@NotNull io.ktor.utils.io.g gVar, @NotNull kotlin.coroutines.d<? super byte[]> dVar) {
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
        a aVar2 = aVar;
        Object objA = aVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = aVar2.label;
        if (i11 == 0) {
            w7.w.b(objA);
            aVar2.label = 1;
            objA = io.ktor.utils.io.g.b.a(gVar, 0L, aVar2, 1, null);
            if (objA == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w7.w.b(objA);
        }
        return r7.s.c((r7.j) objA, 0, 1, null);
    }
}
