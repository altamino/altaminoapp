package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class TextFieldKt$drawIndicatorLine$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ BorderStroke $indicatorBorder;
    final /* synthetic */ float $strokeWidthDp;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldKt$drawIndicatorLine$1(float f, BorderStroke borderStroke) {
        super(1);
        this.$strokeWidthDp = f;
        this.$indicatorBorder = borderStroke;
    }

    public final void a(@NotNull ContentDrawScope drawWithContent) {
        t.j(drawWithContent, "$this$drawWithContent");
        drawWithContent.Z();
        if (Dp.i(this.$strokeWidthDp, Dp.Companion.a())) {
            return;
        }
        float density = this.$strokeWidthDp * drawWithContent.getDensity();
        float fG = Size.g(drawWithContent.c()) - (density / 2);
        a.h(drawWithContent, this.$indicatorBorder.a(), OffsetKt.a(0.0f, fG), OffsetKt.a(Size.i(drawWithContent.c()), fG), density, 0, null, 0.0f, null, 0, 496, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
