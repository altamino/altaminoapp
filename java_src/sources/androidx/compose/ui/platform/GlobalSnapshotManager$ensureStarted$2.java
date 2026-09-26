package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class GlobalSnapshotManager$ensureStarted$2 extends kotlin.jvm.internal.v implements e8.l<Object, w7.l0> {
    final /* synthetic */ kotlinx.coroutines.channels.d<w7.l0> $channel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshotManager$ensureStarted$2(kotlinx.coroutines.channels.d<w7.l0> dVar) {
        super(1);
        this.$channel = dVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(Object obj) {
        invoke2(obj);
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object it) {
        kotlin.jvm.internal.t.j(it, "it");
        this.$channel.p(w7.l0.INSTANCE);
    }
}
