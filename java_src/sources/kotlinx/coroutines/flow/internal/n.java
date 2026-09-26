package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class n {
    @Nullable
    public static final <R> Object a(@NotNull e8.p<? super o0, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super R> dVar) {
        m mVar = new m(dVar.getContext(), dVar);
        Object objB = l8.b.b(mVar, mVar, pVar);
        if (objB == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objB;
    }
}
