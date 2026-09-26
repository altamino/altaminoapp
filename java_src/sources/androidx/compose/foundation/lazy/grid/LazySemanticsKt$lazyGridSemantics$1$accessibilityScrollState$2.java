package androidx.compose.foundation.lazy.grid;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2 extends v implements a<Float> {
    final /* synthetic */ LazyGridItemProvider $itemProvider;
    final /* synthetic */ LazyGridState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazySemanticsKt$lazyGridSemantics$1$accessibilityScrollState$2(LazyGridState lazyGridState, LazyGridItemProvider lazyGridItemProvider) {
        super(0);
        this.$state = lazyGridState;
        this.$itemProvider = lazyGridItemProvider;
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
