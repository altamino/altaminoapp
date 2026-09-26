package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.i0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class c {
    private static final int HOLDS_LOCK_ANOTHER_OWNER = 2;
    private static final int HOLDS_LOCK_UNLOCKED = 0;
    private static final int HOLDS_LOCK_YES = 1;

    @NotNull
    private static final i0 NO_OWNER = new i0("NO_OWNER");

    @NotNull
    private static final i0 ON_LOCK_ALREADY_LOCKED_BY_OWNER = new i0("ALREADY_LOCKED_BY_OWNER");
    private static final int TRY_LOCK_ALREADY_LOCKED_BY_OWNER = 2;
    private static final int TRY_LOCK_FAILED = 1;
    private static final int TRY_LOCK_SUCCESS = 0;

    @NotNull
    public static final a a(boolean z6) {
        return new b(z6);
    }

    public static /* synthetic */ a b(boolean z6, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return a(z6);
    }
}
