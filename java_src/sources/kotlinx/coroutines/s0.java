package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class s0 {
    @NotNull
    public static final String c(@NotNull kotlin.coroutines.d<?> dVar) {
        Object objB;
        if (dVar instanceof kotlinx.coroutines.internal.j) {
            return dVar.toString();
        }
        try {
            w7.v.a aVar = w7.v.Companion;
            objB = w7.v.b(dVar + '@' + b(dVar));
        } catch (Throwable th) {
            w7.v.a aVar2 = w7.v.Companion;
            objB = w7.v.b(w7.w.a(th));
        }
        if (w7.v.e(objB) != null) {
            objB = dVar.getClass().getName() + '@' + b(dVar);
        }
        return (String) objB;
    }

    @NotNull
    public static final String a(@NotNull Object obj) {
        return obj.getClass().getSimpleName();
    }

    @NotNull
    public static final String b(@NotNull Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }
}
