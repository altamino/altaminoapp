package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class s {

    @NotNull
    private static final Object CONDITION_FALSE = new i0("CONDITION_FALSE");
    public static final int FAILURE = 2;
    public static final int SUCCESS = 1;
    public static final int UNDECIDED = 0;

    @NotNull
    public static final Object a() {
        return CONDITION_FALSE;
    }

    @NotNull
    public static final t b(@NotNull Object obj) {
        t tVar;
        c0 c0Var = obj instanceof c0 ? (c0) obj : null;
        if (c0Var != null && (tVar = c0Var.ref) != null) {
            return tVar;
        }
        kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        return (t) obj;
    }
}
