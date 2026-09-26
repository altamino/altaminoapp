package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawRoundRectBorder$2 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ Brush $brush;
    final /* synthetic */ Path $roundedRectPath;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$drawRoundRectBorder$2(Path path, Brush brush) {
        super(1);
        this.$roundedRectPath = path;
        this.$brush = brush;
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
        androidx.compose.ui.graphics.drawscope.a.j(onDrawWithContent, this.$roundedRectPath, this.$brush, 0.0f, null, null, 0, 60, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
