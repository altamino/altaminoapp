package androidx.compose.ui.platform;

import androidx.compose.runtime.snapshots.Snapshot;
import java.util.concurrent.atomic.AtomicBoolean;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class GlobalSnapshotManager {

    @NotNull
    public static final GlobalSnapshotManager INSTANCE = new GlobalSnapshotManager();

    @NotNull
    private static final AtomicBoolean started = new AtomicBoolean(false);

    public final void a() {
        if (started.compareAndSet(false, true)) {
            kotlinx.coroutines.channels.d dVarB = kotlinx.coroutines.channels.g.b(-1, null, null, 6, null);
            kotlinx.coroutines.k.d(kotlinx.coroutines.p0.a(AndroidUiDispatcher.Companion.b()), null, null, new GlobalSnapshotManager$ensureStarted$1(dVarB, null), 3, null);
            Snapshot.Companion.f(new GlobalSnapshotManager$ensureStarted$2(dVarB));
        }
    }

    private GlobalSnapshotManager() {
    }
}
