package androidx.compose.foundation.lazy.grid;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class LazyGridStateKt$rememberLazyGridState$1 extends v implements a<LazyGridState> {
    final /* synthetic */ int $initialFirstVisibleItemIndex;
    final /* synthetic */ int $initialFirstVisibleItemScrollOffset;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyGridStateKt$rememberLazyGridState$1(int i10, int i11) {
        super(0);
        this.$initialFirstVisibleItemIndex = i10;
        this.$initialFirstVisibleItemScrollOffset = i11;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final LazyGridState invoke() {
        return new LazyGridState(this.$initialFirstVisibleItemIndex, this.$initialFirstVisibleItemScrollOffset);
    }
}
