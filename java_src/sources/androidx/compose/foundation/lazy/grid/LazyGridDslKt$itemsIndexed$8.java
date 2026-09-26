package androidx.compose.foundation.lazy.grid;

import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyGridDslKt$itemsIndexed$8 extends v implements p<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ Object[] $items;
    final /* synthetic */ q<LazyGridItemSpanScope, Integer, Object, GridItemSpan> $span;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridDslKt$itemsIndexed$8(q<? super LazyGridItemSpanScope, ? super Integer, Object, GridItemSpan> qVar, Object[] objArr) {
        super(2);
        this.$span = qVar;
        this.$items = objArr;
    }

    public final long a(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
        t.j(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope, Integer.valueOf(i10), this.$items[i10]).g();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.a(a(lazyGridItemSpanScope, num.intValue()));
    }
}
