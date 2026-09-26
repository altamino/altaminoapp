package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class Painter$drawLambda$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ Painter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Painter$drawLambda$1(Painter painter) {
        super(1);
        this.this$0 = painter;
    }

    public final void a(@NotNull DrawScope drawScope) {
        t.j(drawScope, "$this$null");
        this.this$0.m(drawScope);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
