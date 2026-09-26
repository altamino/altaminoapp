package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class RadioButtonKt$RadioButton$2$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ State<Dp> $dotRadius;
    final /* synthetic */ State<Color> $radioColor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RadioButtonKt$RadioButton$2$1(State<Color> state, State<Dp> state2) {
        super(1);
        this.$radioColor = state;
        this.$dotRadius = state2;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        float fH0 = Canvas.H0(RadioButtonKt.RadioStrokeWidth);
        float f = fH0 / 2;
        a.e(Canvas, this.$radioColor.getValue().v(), Canvas.H0(RadioButtonKt.RadioRadius) - f, 0L, 0.0f, new Stroke(fH0, 0.0f, 0, 0, null, 30, null), null, 0, 108, null);
        if (Dp.e(this.$dotRadius.getValue().l(), Dp.f(0)) > 0) {
            a.e(Canvas, this.$radioColor.getValue().v(), Canvas.H0(this.$dotRadius.getValue().l()) - f, 0L, 0.0f, Fill.INSTANCE, null, 0, 108, null);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
