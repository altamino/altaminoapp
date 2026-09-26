package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class CacheDrawScope$onDrawBehind$1 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ l<DrawScope, l0> $block;

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        this.$block.invoke(onDrawWithContent);
        onDrawWithContent.Z();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
