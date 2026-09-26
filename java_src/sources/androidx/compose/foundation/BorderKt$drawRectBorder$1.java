package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawRectBorder$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ Brush $brush;
    final /* synthetic */ long $rectTopLeft;
    final /* synthetic */ long $size;
    final /* synthetic */ DrawStyle $style;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$drawRectBorder$1(Brush brush, long j6, long j10, DrawStyle drawStyle) {
        super(1);
        this.$brush = brush;
        this.$rectTopLeft = j6;
        this.$size = j10;
        this.$style = drawStyle;
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
        androidx.compose.ui.graphics.drawscope.a.m(onDrawWithContent, this.$brush, this.$rectTopLeft, this.$size, 0.0f, this.$style, null, 0, 104, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
