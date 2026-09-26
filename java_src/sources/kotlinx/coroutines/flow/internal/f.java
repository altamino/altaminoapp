package kotlinx.coroutines.flow.internal;

import kotlin.jvm.internal.v0;
import kotlinx.coroutines.internal.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class f {
    public static /* synthetic */ Object c(kotlin.coroutines.g gVar, Object obj, Object obj2, e8.p pVar, kotlin.coroutines.d dVar, int i10, Object obj3) {
        if ((i10 & 4) != 0) {
            obj2 = m0.b(gVar);
        }
        return b(gVar, obj, obj2, pVar, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> kotlinx.coroutines.flow.h<T> d(kotlinx.coroutines.flow.h<? super T> hVar, kotlin.coroutines.g gVar) {
        return ((hVar instanceof w) || (hVar instanceof r)) ? hVar : new z(hVar, gVar);
    }

    @Nullable
    public static final <T, V> Object b(@NotNull kotlin.coroutines.g gVar, V v5, @NotNull Object obj, @NotNull e8.p<? super V, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
        Object objC = m0.c(gVar, obj);
        try {
            Object objInvoke = ((e8.p) v0.e(pVar, 2)).invoke(v5, new x(dVar, gVar));
            m0.a(gVar, objC);
            if (objInvoke == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objInvoke;
        } catch (Throwable th) {
            m0.a(gVar, objC);
            throw th;
        }
    }
}
