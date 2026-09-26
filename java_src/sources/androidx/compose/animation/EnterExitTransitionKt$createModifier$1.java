package androidx.compose.animation;

import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class EnterExitTransitionKt$createModifier$1 extends v implements l<GraphicsLayerScope, l0> {
    final /* synthetic */ State<Float> $alpha$delegate;
    final /* synthetic */ State<Float> $scale$delegate;
    final /* synthetic */ State<TransformOrigin> $transformOrigin$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    EnterExitTransitionKt$createModifier$1(State<Float> state, State<Float> state2, State<TransformOrigin> state3) {
        super(1);
        this.$alpha$delegate = state;
        this.$scale$delegate = state2;
        this.$transformOrigin$delegate = state3;
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayer) {
        t.j(graphicsLayer, "$this$graphicsLayer");
        graphicsLayer.b(EnterExitTransitionKt.n(this.$alpha$delegate));
        graphicsLayer.k(EnterExitTransitionKt.i(this.$scale$delegate));
        graphicsLayer.n(EnterExitTransitionKt.i(this.$scale$delegate));
        graphicsLayer.z(EnterExitTransitionKt.j(this.$transformOrigin$delegate));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
