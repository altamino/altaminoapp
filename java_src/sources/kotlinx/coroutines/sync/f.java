package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class f {
    private static final int MAX_SPIN_CYCLES = l0.e("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 0, 0, 12, null);

    @NotNull
    private static final i0 PERMIT = new i0("PERMIT");

    @NotNull
    private static final i0 TAKEN = new i0("TAKEN");

    @NotNull
    private static final i0 BROKEN = new i0("BROKEN");

    @NotNull
    private static final i0 CANCELLED = new i0("CANCELLED");
    private static final int SEGMENT_SIZE = l0.e("kotlinx.coroutines.semaphore.segmentSize", 16, 0, 0, 12, null);

    @NotNull
    public static final d a(int i10, int i11) {
        return new e(i10, i11);
    }

    public static /* synthetic */ d b(int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 0;
        }
        return a(i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g j(long j6, g gVar) {
        return new g(j6, gVar, 0);
    }
}
