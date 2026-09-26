package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@StabilityInferred
public final class SnapshotApplyConflictException extends Exception {
    public static final int $stable = 8;

    @NotNull
    private final Snapshot snapshot;

    public SnapshotApplyConflictException(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        this.snapshot = snapshot;
    }
}
