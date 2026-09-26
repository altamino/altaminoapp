package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LazyLayoutKt$LazyLayout$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ LazyLayoutItemProvider $itemProvider;
    final /* synthetic */ p<LazyLayoutMeasureScope, Constraints, MeasureResult> $measurePolicy;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ LazyLayoutPrefetchState $prefetchState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyLayoutKt$LazyLayout$3(LazyLayoutItemProvider lazyLayoutItemProvider, Modifier modifier, LazyLayoutPrefetchState lazyLayoutPrefetchState, p<? super LazyLayoutMeasureScope, ? super Constraints, ? extends MeasureResult> pVar, int i10, int i11) {
        super(2);
        this.$itemProvider = lazyLayoutItemProvider;
        this.$modifier = modifier;
        this.$prefetchState = lazyLayoutPrefetchState;
        this.$measurePolicy = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LazyLayoutKt.a(this.$itemProvider, this.$modifier, this.$prefetchState, this.$measurePolicy, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
