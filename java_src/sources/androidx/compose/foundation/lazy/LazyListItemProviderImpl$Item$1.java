package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LazyListItemProviderImpl$Item$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $index;
    final /* synthetic */ LazyListItemProviderImpl $tmp0_rcvr;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListItemProviderImpl$Item$1(LazyListItemProviderImpl lazyListItemProviderImpl, int i10, int i11) {
        super(2);
        this.$tmp0_rcvr = lazyListItemProviderImpl;
        this.$index = i10;
        this.$$changed = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.b(this.$index, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
