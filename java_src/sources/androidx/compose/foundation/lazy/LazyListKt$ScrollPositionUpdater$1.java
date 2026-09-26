package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class LazyListKt$ScrollPositionUpdater$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ LazyListItemProvider $itemProvider;
    final /* synthetic */ LazyListState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListKt$ScrollPositionUpdater$1(LazyListItemProvider lazyListItemProvider, LazyListState lazyListState, int i10) {
        super(2);
        this.$itemProvider = lazyListItemProvider;
        this.$state = lazyListState;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LazyListKt.b(this.$itemProvider, this.$state, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
