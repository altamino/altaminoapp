package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class LazyLayoutKt$LazyLayout$2$1 extends v implements p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ LazyLayoutItemContentFactory $itemContentFactory;
    final /* synthetic */ p<LazyLayoutMeasureScope, Constraints, MeasureResult> $measurePolicy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyLayoutKt$LazyLayout$2$1(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, p<? super LazyLayoutMeasureScope, ? super Constraints, ? extends MeasureResult> pVar) {
        super(2);
        this.$itemContentFactory = lazyLayoutItemContentFactory;
        this.$measurePolicy = pVar;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope subcomposeMeasureScope, long j6) {
        t.j(subcomposeMeasureScope, "$this$null");
        this.$itemContentFactory.e(subcomposeMeasureScope, j6);
        return this.$measurePolicy.invoke(new LazyLayoutMeasureScopeImpl(this.$itemContentFactory, subcomposeMeasureScope), Constraints.b(j6));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
