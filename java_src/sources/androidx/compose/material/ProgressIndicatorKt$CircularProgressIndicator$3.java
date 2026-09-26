package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$CircularProgressIndicator$3 extends v implements l<DrawScope, l0> {
    final /* synthetic */ State<Float> $baseRotation$delegate;
    final /* synthetic */ long $color;
    final /* synthetic */ State<Integer> $currentRotation$delegate;
    final /* synthetic */ State<Float> $endAngle$delegate;
    final /* synthetic */ State<Float> $startAngle$delegate;
    final /* synthetic */ Stroke $stroke;
    final /* synthetic */ float $strokeWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressIndicatorKt$CircularProgressIndicator$3(float f, long j6, Stroke stroke, State<Integer> state, State<Float> state2, State<Float> state3, State<Float> state4) {
        super(1);
        this.$strokeWidth = f;
        this.$color = j6;
        this.$stroke = stroke;
        this.$currentRotation$delegate = state;
        this.$endAngle$delegate = state2;
        this.$startAngle$delegate = state3;
        this.$baseRotation$delegate = state4;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        ProgressIndicatorKt.F(Canvas, ProgressIndicatorKt.d(this.$startAngle$delegate) + (((ProgressIndicatorKt.e(this.$currentRotation$delegate) * 216.0f) % 360.0f) - 90.0f) + ProgressIndicatorKt.f(this.$baseRotation$delegate), this.$strokeWidth, Math.abs(ProgressIndicatorKt.c(this.$endAngle$delegate) - ProgressIndicatorKt.d(this.$startAngle$delegate)), this.$color, this.$stroke);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
