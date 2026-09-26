package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class GlobalSnapshot$takeNestedSnapshot$1 extends v implements l<SnapshotIdSet, ReadonlySnapshot> {
    final /* synthetic */ l<Object, l0> $readObserver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshot$takeNestedSnapshot$1(l<Object, l0> lVar) {
        super(1);
        this.$readObserver = lVar;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ReadonlySnapshot invoke(@NotNull SnapshotIdSet invalid) {
        int i10;
        t.j(invalid, "invalid");
        synchronized (SnapshotKt.C()) {
            i10 = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = i10 + 1;
        }
        return new ReadonlySnapshot(i10, invalid, this.$readObserver);
    }
}
