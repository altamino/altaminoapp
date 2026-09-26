package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class g0 {
    @NotNull
    public static final <T> Object a(@Nullable Object obj, @NotNull kotlin.coroutines.d<? super T> dVar) {
        if (!(obj instanceof c0)) {
            return w7.v.b(obj);
        }
        w7.v.a aVar = w7.v.Companion;
        return w7.v.b(w7.w.a(((c0) obj).cause));
    }

    public static /* synthetic */ Object d(Object obj, e8.l lVar, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            lVar = null;
        }
        return b(obj, lVar);
    }

    @Nullable
    public static final <T> Object b(@NotNull Object obj, @Nullable e8.l<? super Throwable, w7.l0> lVar) {
        Throwable thE = w7.v.e(obj);
        if (thE == null) {
            if (lVar != null) {
                return new d0(obj, lVar);
            }
            return obj;
        }
        return new c0(thE, false, 2, null);
    }

    @Nullable
    public static final <T> Object c(@NotNull Object obj, @NotNull o<?> oVar) {
        Throwable thE = w7.v.e(obj);
        if (thE != null) {
            return new c0(thE, false, 2, null);
        }
        return obj;
    }
}
