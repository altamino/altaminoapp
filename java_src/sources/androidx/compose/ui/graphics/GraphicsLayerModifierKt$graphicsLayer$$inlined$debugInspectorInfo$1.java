package androidx.compose.ui.graphics;

import androidx.compose.ui.platform.InspectorInfo;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1 extends kotlin.jvm.internal.v implements e8.l<InspectorInfo, w7.l0> {
    final /* synthetic */ e8.l $block$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GraphicsLayerModifierKt$graphicsLayer$$inlined$debugInspectorInfo$1(e8.l lVar) {
        super(1);
        this.$block$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        kotlin.jvm.internal.t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("graphicsLayer");
        inspectorInfo.a().c("block", this.$block$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return w7.l0.INSTANCE;
    }
}
