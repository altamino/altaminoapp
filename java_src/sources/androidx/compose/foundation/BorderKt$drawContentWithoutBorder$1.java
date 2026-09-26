package androidx.compose.foundation;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawContentWithoutBorder$1 extends v implements l<ContentDrawScope, l0> {
    public static final BorderKt$drawContentWithoutBorder$1 INSTANCE = new BorderKt$drawContentWithoutBorder$1();

    BorderKt$drawContentWithoutBorder$1() {
        super(1);
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
