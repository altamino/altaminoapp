package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class GlobalSnapshot$takeNestedMutableSnapshot$1 extends v implements l<SnapshotIdSet, MutableSnapshot> {
    final /* synthetic */ l<Object, l0> $readObserver;
    final /* synthetic */ l<Object, l0> $writeObserver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshot$takeNestedMutableSnapshot$1(l<Object, l0> lVar, l<Object, l0> lVar2) {
        super(1);
        this.$readObserver = lVar;
        this.$writeObserver = lVar2;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MutableSnapshot invoke(@NotNull SnapshotIdSet invalid) {
        int i10;
        t.j(invalid, "invalid");
        synchronized (SnapshotKt.C()) {
            i10 = SnapshotKt.nextSnapshotId;
            SnapshotKt.nextSnapshotId = i10 + 1;
        }
        return new MutableSnapshot(i10, invalid, this.$readObserver, this.$writeObserver);
    }
}
