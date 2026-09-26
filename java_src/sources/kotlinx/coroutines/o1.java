package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class o1 {
    private static final long MAX_DELAY_NS = 4611686018427387903L;
    private static final long MAX_MS = 9223372036854L;
    private static final long MS_TO_NS = 1000000;
    private static final int SCHEDULE_COMPLETED = 1;
    private static final int SCHEDULE_DISPOSED = 2;
    private static final int SCHEDULE_OK = 0;

    @NotNull
    private static final kotlinx.coroutines.internal.i0 DISPOSED_TASK = new kotlinx.coroutines.internal.i0("REMOVED_TASK");

    @NotNull
    private static final kotlinx.coroutines.internal.i0 CLOSED_EMPTY = new kotlinx.coroutines.internal.i0("CLOSED_EMPTY");

    public static final long c(long j6) {
        if (j6 <= 0) {
            return 0L;
        }
        if (j6 >= MAX_MS) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j6;
    }
}
