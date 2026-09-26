package androidx.compose.material;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$LinearProgressIndicator$1$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ long $backgroundColor;
    final /* synthetic */ long $color;
    final /* synthetic */ float $progress;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressIndicatorKt$LinearProgressIndicator$1$1(long j6, float f, long j10) {
        super(1);
        this.$backgroundColor = j6;
        this.$progress = f;
        this.$color = j10;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        float fG = Size.g(Canvas.c());
        ProgressIndicatorKt.H(Canvas, this.$backgroundColor, fG);
        ProgressIndicatorKt.G(Canvas, 0.0f, this.$progress, this.$color, fG);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
