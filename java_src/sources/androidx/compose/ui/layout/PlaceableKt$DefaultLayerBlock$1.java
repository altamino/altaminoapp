package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class PlaceableKt$DefaultLayerBlock$1 extends v implements l<GraphicsLayerScope, l0> {
    public static final PlaceableKt$DefaultLayerBlock$1 INSTANCE = new PlaceableKt$DefaultLayerBlock$1();

    PlaceableKt$DefaultLayerBlock$1() {
        super(1);
    }

    public final void a(@NotNull GraphicsLayerScope graphicsLayerScope) {
        t.j(graphicsLayerScope, "$this$null");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(GraphicsLayerScope graphicsLayerScope) {
        a(graphicsLayerScope);
        return l0.INSTANCE;
    }
}
