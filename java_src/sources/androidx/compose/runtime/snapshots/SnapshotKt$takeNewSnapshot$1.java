package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes8.dex */
final class SnapshotKt$takeNewSnapshot$1<T> extends v implements l<SnapshotIdSet, T> {
    final /* synthetic */ l<SnapshotIdSet, T> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SnapshotKt$takeNewSnapshot$1(l<? super SnapshotIdSet, ? extends T> lVar) {
        super(1);
        this.$block = lVar;
    }

    /* JADX WARN: Incorrect return type in method signature: (Landroidx/compose/runtime/snapshots/SnapshotIdSet;)TT; */
    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Snapshot invoke(@NotNull SnapshotIdSet invalid) {
        t.j(invalid, "invalid");
        Snapshot snapshot = (Snapshot) this.$block.invoke(invalid);
        synchronized (SnapshotKt.C()) {
            SnapshotKt.openSnapshots = SnapshotKt.openSnapshots.s(snapshot.f());
            l0 l0Var = l0.INSTANCE;
        }
        return snapshot;
    }
}
