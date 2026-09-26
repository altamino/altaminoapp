package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutationPolicy;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public interface SnapshotMutableState<T> extends MutableState<T> {
    @NotNull
    SnapshotMutationPolicy<T> g();
}
