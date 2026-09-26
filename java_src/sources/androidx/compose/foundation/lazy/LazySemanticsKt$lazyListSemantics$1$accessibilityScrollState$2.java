package androidx.compose.foundation.lazy;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2 extends v implements a<Float> {
    final /* synthetic */ LazyListItemProvider $itemProvider;
    final /* synthetic */ LazyListState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2(LazyListState lazyListState, LazyListItemProvider lazyListItemProvider) {
        super(0);
        this.$state = lazyListState;
        this.$itemProvider = lazyListItemProvider;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        float fJ;
        float fK;
        if (this.$state.h()) {
            fJ = this.$itemProvider.f();
            fK = 1.0f;
        } else {
            fJ = this.$state.j();
            fK = this.$state.k() / 100000.0f;
        }
        return Float.valueOf(fJ + fK);
    }
}
