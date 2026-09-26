package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BoxWithConstraintsKt$BoxWithConstraints$1$1 extends v implements e8.p<SubcomposeMeasureScope, Constraints, MeasureResult> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ q<BoxWithConstraintsScope, Composer, Integer, l0> $content;
    final /* synthetic */ MeasurePolicy $measurePolicy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BoxWithConstraintsKt$BoxWithConstraints$1$1(MeasurePolicy measurePolicy, q<? super BoxWithConstraintsScope, ? super Composer, ? super Integer, l0> qVar, int i10) {
        super(2);
        this.$measurePolicy = measurePolicy;
        this.$content = qVar;
        this.$$dirty = i10;
    }

    @NotNull
    public final MeasureResult a(@NotNull SubcomposeMeasureScope SubcomposeLayout, long j6) {
        t.j(SubcomposeLayout, "$this$SubcomposeLayout");
        return this.$measurePolicy.a(SubcomposeLayout, SubcomposeLayout.v(l0.INSTANCE, ComposableLambdaKt.c(-1945019079, true, new BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1(this.$content, new BoxWithConstraintsScopeImpl(SubcomposeLayout, j6, null), this.$$dirty))), j6);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
        return a(subcomposeMeasureScope, constraints.t());
    }
}
