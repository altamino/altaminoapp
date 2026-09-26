package androidx.compose.runtime.snapshots;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class SnapshotKt$mergedWriteObserver$1 extends v implements l<Object, l0> {
    final /* synthetic */ l<Object, l0> $parentObserver;
    final /* synthetic */ l<Object, l0> $writeObserver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SnapshotKt$mergedWriteObserver$1(l<Object, l0> lVar, l<Object, l0> lVar2) {
        super(1);
        this.$writeObserver = lVar;
        this.$parentObserver = lVar2;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object state) {
        t.j(state, "state");
        this.$writeObserver.invoke(state);
        this.$parentObserver.invoke(state);
    }
}
