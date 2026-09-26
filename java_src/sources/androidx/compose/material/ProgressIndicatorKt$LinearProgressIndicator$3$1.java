package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$LinearProgressIndicator$3$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ long $color;
    final /* synthetic */ State<Float> $firstLineHead$delegate;
    final /* synthetic */ State<Float> $firstLineTail$delegate;
    final /* synthetic */ State<Float> $secondLineHead$delegate;
    final /* synthetic */ State<Float> $secondLineTail$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressIndicatorKt$LinearProgressIndicator$3$1(long j6, long j10, State<Float> state, State<Float> state2, State<Float> state3, State<Float> state4) {
        super(1);
        this.$backgroundColor = j6;
        this.$color = j10;
        this.$firstLineHead$delegate = state;
        this.$firstLineTail$delegate = state2;
        this.$secondLineHead$delegate = state3;
        this.$secondLineTail$delegate = state4;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        float fG = Size.g(Canvas.c());
        ProgressIndicatorKt.H(Canvas, this.$backgroundColor, fG);
        if (ProgressIndicatorKt.i(this.$firstLineHead$delegate) - ProgressIndicatorKt.j(this.$firstLineTail$delegate) > 0.0f) {
            ProgressIndicatorKt.G(Canvas, ProgressIndicatorKt.i(this.$firstLineHead$delegate), ProgressIndicatorKt.j(this.$firstLineTail$delegate), this.$color, fG);
        }
        if (ProgressIndicatorKt.k(this.$secondLineHead$delegate) - ProgressIndicatorKt.l(this.$secondLineTail$delegate) > 0.0f) {
            ProgressIndicatorKt.G(Canvas, ProgressIndicatorKt.k(this.$secondLineHead$delegate), ProgressIndicatorKt.l(this.$secondLineTail$delegate), this.$color, fG);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
