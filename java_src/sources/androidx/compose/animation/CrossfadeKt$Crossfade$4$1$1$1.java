package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class CrossfadeKt$Crossfade$4$1$1$1 extends v implements l<GraphicsLayerScope, l0> {
    final /* synthetic */ State<Float> $alpha$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CrossfadeKt$Crossfade$4$1$1$1(State<Float> state) {
        super(1);
        this.$alpha$delegate = state;
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayer) {
        t.j(graphicsLayer, "$this$graphicsLayer");
        graphicsLayer.b(CrossfadeKt$Crossfade$4$1.c(this.$alpha$delegate));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
