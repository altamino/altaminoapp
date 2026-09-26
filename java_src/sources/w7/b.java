package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    @NotNull
    private static final Object UNDEFINED_RESULT;

    static {
        v.a aVar = v.Companion;
        UNDEFINED_RESULT = v.b(kotlin.coroutines.intrinsics.d.e());
    }

    public static final <T, R> R b(@NotNull a<T, R> aVar, T t5) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        return (R) new d(aVar.a(), t5).b();
    }
}
