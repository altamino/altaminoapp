package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class LazyGridItemsSnapshot$Item$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $index;
    final /* synthetic */ LazyGridItemsSnapshot $tmp0_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridItemsSnapshot$Item$1(LazyGridItemsSnapshot lazyGridItemsSnapshot, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = lazyGridItemsSnapshot;
        this.$index = i10;
        this.$$changed = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.a(this.$index, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
