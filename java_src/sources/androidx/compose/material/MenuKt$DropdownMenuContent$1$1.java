package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class MenuKt$DropdownMenuContent$1$1 extends v implements l<GraphicsLayerScope, l0> {
    final /* synthetic */ State<Float> $alpha$delegate;
    final /* synthetic */ State<Float> $scale$delegate;
    final /* synthetic */ MutableState<TransformOrigin> $transformOriginState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MenuKt$DropdownMenuContent$1$1(MutableState<TransformOrigin> mutableState, State<Float> state, State<Float> state2) {
        super(1);
        this.$transformOriginState = mutableState;
        this.$scale$delegate = state;
        this.$alpha$delegate = state2;
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayer) {
        t.j(graphicsLayer, "$this$graphicsLayer");
        graphicsLayer.k(MenuKt.b(this.$scale$delegate));
        graphicsLayer.n(MenuKt.b(this.$scale$delegate));
        graphicsLayer.b(MenuKt.c(this.$alpha$delegate));
        graphicsLayer.z(this.$transformOriginState.getValue().j());
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
