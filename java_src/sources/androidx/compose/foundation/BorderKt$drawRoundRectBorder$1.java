package androidx.compose.foundation;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.Stroke;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawRoundRectBorder$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ long $borderSize;
    final /* synthetic */ Stroke $borderStroke;
    final /* synthetic */ Brush $brush;
    final /* synthetic */ long $cornerRadius;
    final /* synthetic */ boolean $fillArea;
    final /* synthetic */ float $halfStroke;
    final /* synthetic */ float $strokeWidth;
    final /* synthetic */ long $topLeft;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$drawRoundRectBorder$1(boolean z6, Brush brush, long j6, float f, float f6, long j10, long j11, Stroke stroke) {
        super(1);
        this.$fillArea = z6;
        this.$brush = brush;
        this.$cornerRadius = j6;
        this.$halfStroke = f;
        this.$strokeWidth = f6;
        this.$topLeft = j10;
        this.$borderSize = j11;
        this.$borderStroke = stroke;
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
        if (this.$fillArea) {
            androidx.compose.ui.graphics.drawscope.a.o(onDrawWithContent, this.$brush, 0L, 0L, this.$cornerRadius, 0.0f, null, null, 0, 246, null);
            return;
        }
        float fE = CornerRadius.e(this.$cornerRadius);
        float f = this.$halfStroke;
        if (fE >= f) {
            androidx.compose.ui.graphics.drawscope.a.o(onDrawWithContent, this.$brush, this.$topLeft, this.$borderSize, BorderKt.o(this.$cornerRadius, f), 0.0f, this.$borderStroke, null, 0, 208, null);
            return;
        }
        float f6 = this.$strokeWidth;
        float fI = Size.i(onDrawWithContent.c()) - this.$strokeWidth;
        float fG = Size.g(onDrawWithContent.c()) - this.$strokeWidth;
        int iA = ClipOp.Companion.a();
        Brush brush = this.$brush;
        long j6 = this.$cornerRadius;
        DrawContext drawContextT = onDrawWithContent.T();
        long jC = drawContextT.c();
        drawContextT.a().r();
        drawContextT.d().a(f6, f6, fI, fG, iA);
        androidx.compose.ui.graphics.drawscope.a.o(onDrawWithContent, brush, 0L, 0L, j6, 0.0f, null, null, 0, 246, null);
        drawContextT.a().n();
        drawContextT.b(jC);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
