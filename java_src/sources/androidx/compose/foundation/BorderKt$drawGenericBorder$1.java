package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawGenericBorder$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ Brush $brush;
    final /* synthetic */ Outline.Generic $outline;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$drawGenericBorder$1(Outline.Generic generic, Brush brush) {
        super(1);
        this.$outline = generic;
        this.$brush = brush;
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
        androidx.compose.ui.graphics.drawscope.a.j(onDrawWithContent, this.$outline.a(), this.$brush, 0.0f, null, null, 0, 60, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
