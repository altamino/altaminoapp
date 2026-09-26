package androidx.compose.material;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ProgressIndicatorKt$CircularProgressIndicator$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ long $color;
    final /* synthetic */ float $progress;
    final /* synthetic */ Stroke $stroke;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressIndicatorKt$CircularProgressIndicator$1(float f, long j6, Stroke stroke) {
        super(1);
        this.$progress = f;
        this.$color = j6;
        this.$stroke = stroke;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        ProgressIndicatorKt.E(Canvas, 270.0f, this.$progress * 360.0f, this.$color, this.$stroke);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
