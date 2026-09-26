package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class SnapshotKt$advanceGlobalSnapshot$2 extends v implements l<SnapshotIdSet, l0> {
    public static final SnapshotKt$advanceGlobalSnapshot$2 INSTANCE = new SnapshotKt$advanceGlobalSnapshot$2();

    SnapshotKt$advanceGlobalSnapshot$2() {
        super(1);
    }

    public final void a(@NotNull SnapshotIdSet it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SnapshotIdSet snapshotIdSet) {
        a(snapshotIdSet);
        return l0.INSTANCE;
    }
}
