package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class k2 {
    private static final int FALSE = 0;
    private static final int RETRY = -1;
    private static final int TRUE = 1;

    @NotNull
    private static final kotlinx.coroutines.internal.i0 COMPLETING_ALREADY = new kotlinx.coroutines.internal.i0("COMPLETING_ALREADY");

    @NotNull
    public static final kotlinx.coroutines.internal.i0 COMPLETING_WAITING_CHILDREN = new kotlinx.coroutines.internal.i0("COMPLETING_WAITING_CHILDREN");

    @NotNull
    private static final kotlinx.coroutines.internal.i0 COMPLETING_RETRY = new kotlinx.coroutines.internal.i0("COMPLETING_RETRY");

    @NotNull
    private static final kotlinx.coroutines.internal.i0 TOO_LATE_TO_CANCEL = new kotlinx.coroutines.internal.i0("TOO_LATE_TO_CANCEL");

    @NotNull
    private static final kotlinx.coroutines.internal.i0 SEALED = new kotlinx.coroutines.internal.i0("SEALED");

    @NotNull
    private static final j1 EMPTY_NEW = new j1(false);

    @NotNull
    private static final j1 EMPTY_ACTIVE = new j1(true);

    @Nullable
    public static final Object g(@Nullable Object obj) {
        return obj instanceof v1 ? new w1((v1) obj) : obj;
    }

    @Nullable
    public static final Object h(@Nullable Object obj) {
        v1 v1Var;
        w1 w1Var = obj instanceof w1 ? (w1) obj : null;
        return (w1Var == null || (v1Var = w1Var.state) == null) ? obj : v1Var;
    }
}
