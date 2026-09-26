package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class q {
    private static final int DECISION_SHIFT = 29;
    private static final int INDEX_MASK = 536870911;
    private static final int NO_INDEX = 536870911;
    private static final int RESUMED = 2;

    @NotNull
    public static final kotlinx.coroutines.internal.i0 RESUME_TOKEN = new kotlinx.coroutines.internal.i0("RESUME_TOKEN");
    private static final int SUSPENDED = 1;
    private static final int UNDECIDED = 0;
}
