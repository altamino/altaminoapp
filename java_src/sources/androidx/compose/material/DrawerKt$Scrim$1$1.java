package androidx.compose.material;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.a;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$Scrim$1$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ long $color;
    final /* synthetic */ a<Float> $fraction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawerKt$Scrim$1$1(long j6, a<Float> aVar) {
        super(1);
        this.$color = j6;
        this.$fraction = aVar;
    }

    public final void a(@NotNull DrawScope Canvas) {
        t.j(Canvas, "$this$Canvas");
        androidx.compose.ui.graphics.drawscope.a.n(Canvas, this.$color, 0L, 0L, this.$fraction.invoke().floatValue(), null, null, 0, 118, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
