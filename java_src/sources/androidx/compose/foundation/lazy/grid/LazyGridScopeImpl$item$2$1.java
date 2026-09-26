package androidx.compose.foundation.lazy.grid;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class LazyGridScopeImpl$item$2$1 extends v implements p<LazyGridItemSpanScope, Integer, GridItemSpan> {
    final /* synthetic */ l<LazyGridItemSpanScope, GridItemSpan> $span;

    public final long a(@NotNull LazyGridItemSpanScope lazyGridItemSpanScope, int i10) {
        t.j(lazyGridItemSpanScope, "$this$null");
        return this.$span.invoke(lazyGridItemSpanScope).g();
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ GridItemSpan invoke(LazyGridItemSpanScope lazyGridItemSpanScope, Integer num) {
        return GridItemSpan.a(a(lazyGridItemSpanScope, num.intValue()));
    }
}
