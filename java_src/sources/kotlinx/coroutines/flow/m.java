package kotlinx.coroutines.flow;

import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final /* synthetic */ class m {
    @NotNull
    public static final <T> g<T> a(@NotNull g<? extends T> gVar, int i10, @NotNull kotlinx.coroutines.channels.a aVar) {
        if (i10 < 0 && i10 != -2 && i10 != -1) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i10).toString());
        }
        if (i10 == -1 && aVar != kotlinx.coroutines.channels.a.SUSPEND) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i10 == -1) {
            aVar = kotlinx.coroutines.channels.a.DROP_OLDEST;
            i10 = 0;
        }
        int i11 = i10;
        kotlinx.coroutines.channels.a aVar2 = aVar;
        return gVar instanceof kotlinx.coroutines.flow.internal.p ? kotlinx.coroutines.flow.internal.p.a.a((kotlinx.coroutines.flow.internal.p) gVar, null, i11, aVar2, 1, null) : new kotlinx.coroutines.flow.internal.h(gVar, null, i11, aVar2, 2, null);
    }

    @NotNull
    public static final <T> g<T> e(@NotNull g<? extends T> gVar) {
        return b(gVar, -1, null, 2, null);
    }

    public static /* synthetic */ g b(g gVar, int i10, kotlinx.coroutines.channels.a aVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -2;
        }
        if ((i11 & 2) != 0) {
            aVar = kotlinx.coroutines.channels.a.SUSPEND;
        }
        return i.d(gVar, i10, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> g<T> c(@NotNull g<? extends T> gVar) {
        return gVar instanceof c ? gVar : new d(gVar);
    }

    private static final void d(kotlin.coroutines.g gVar) {
        if (gVar.get(b2.Key) == null) {
            return;
        }
        throw new IllegalArgumentException(("Flow context cannot contain job in it. Had " + gVar).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> g<T> f(@NotNull g<? extends T> gVar, @NotNull kotlin.coroutines.g gVar2) {
        d(gVar2);
        if (!kotlin.jvm.internal.t.e(gVar2, kotlin.coroutines.h.INSTANCE)) {
            if (gVar instanceof kotlinx.coroutines.flow.internal.p) {
                return kotlinx.coroutines.flow.internal.p.a.a((kotlinx.coroutines.flow.internal.p) gVar, gVar2, 0, null, 6, null);
            }
            return new kotlinx.coroutines.flow.internal.h(gVar, gVar2, 0, null, 12, null);
        }
        return gVar;
    }
}
