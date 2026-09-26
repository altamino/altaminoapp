package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LazyGridKt$ScrollPositionUpdater$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ LazyGridItemProvider $itemProvider;
    final /* synthetic */ LazyGridState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridKt$ScrollPositionUpdater$1(LazyGridItemProvider lazyGridItemProvider, LazyGridState lazyGridState, int i10) {
        super(2);
        this.$itemProvider = lazyGridItemProvider;
        this.$state = lazyGridState;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LazyGridKt.b(this.$itemProvider, this.$state, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
