package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public abstract class SnapshotApplyResult {
    public static final int $stable = 0;

    @StabilityInferred
    public static final class Failure extends SnapshotApplyResult {
        public static final int $stable = 8;

        @NotNull
        private final Snapshot snapshot;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failure(@NotNull Snapshot snapshot) {
            super(null);
            t.j(snapshot, "snapshot");
            this.snapshot = snapshot;
        }
    }

    @StabilityInferred
    public static final class Success extends SnapshotApplyResult {
        public static final int $stable = 0;

        @NotNull
        public static final Success INSTANCE = new Success();

        private Success() {
            super(null);
        }
    }

    public /* synthetic */ SnapshotApplyResult(k kVar) {
        this();
    }

    private SnapshotApplyResult() {
    }
}
