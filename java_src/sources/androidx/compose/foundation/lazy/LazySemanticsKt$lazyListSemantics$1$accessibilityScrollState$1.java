package androidx.compose.foundation.lazy;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1 extends v implements a<Float> {
    final /* synthetic */ LazyListState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1(LazyListState lazyListState) {
        super(0);
        this.$state = lazyListState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        return Float.valueOf(this.$state.j() + (this.$state.k() / 100000.0f));
    }
}
