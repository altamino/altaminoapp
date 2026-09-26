package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.ExperimentalComposeApi;
import e8.p;
import kotlin.coroutines.g;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.z2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@ExperimentalComposeApi
final class SnapshotContextElementImpl implements SnapshotContextElement, z2<Snapshot> {

    @NotNull
    private final Snapshot snapshot;

    @Override // kotlin.coroutines.g.b
    @NotNull
    public g.c<?> getKey() {
        return SnapshotContextElement.Key;
    }

    public SnapshotContextElementImpl(@NotNull Snapshot snapshot) {
        t.j(snapshot, "snapshot");
        this.snapshot = snapshot;
    }

    @Override // kotlinx.coroutines.z2
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull g context, @Nullable Snapshot snapshot) {
        t.j(context, "context");
        this.snapshot.y(snapshot);
    }

    @Override // kotlinx.coroutines.z2
    @Nullable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Snapshot E0(@NotNull g context) {
        t.j(context, "context");
        return this.snapshot.x();
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    public <R> R fold(R r, @NotNull p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) SnapshotContextElement.DefaultImpls.a(this, r, pVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @Nullable
    public <E extends g.b> E get(@NotNull g.c<E> cVar) {
        return (E) SnapshotContextElement.DefaultImpls.b(this, cVar);
    }

    @Override // kotlin.coroutines.g.b, kotlin.coroutines.g
    @NotNull
    public g minusKey(@NotNull g.c<?> cVar) {
        return SnapshotContextElement.DefaultImpls.c(this, cVar);
    }

    @Override // kotlin.coroutines.g
    @NotNull
    public g plus(@NotNull g gVar) {
        return SnapshotContextElement.DefaultImpls.d(this, gVar);
    }
}
