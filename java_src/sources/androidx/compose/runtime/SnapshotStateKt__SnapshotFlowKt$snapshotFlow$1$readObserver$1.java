package androidx.compose.runtime;

import e8.l;
import java.util.Set;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1 extends v implements l<Object, l0> {
    final /* synthetic */ Set<Object> $readSet;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1$readObserver$1(Set<Object> set) {
        super(1);
        this.$readSet = set;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object it) {
        t.j(it, "it");
        this.$readSet.add(it);
    }
}
