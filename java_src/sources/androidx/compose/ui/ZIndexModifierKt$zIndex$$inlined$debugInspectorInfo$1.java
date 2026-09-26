package androidx.compose.ui;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class ZIndexModifierKt$zIndex$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ float $zIndex$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZIndexModifierKt$zIndex$$inlined$debugInspectorInfo$1(float f) {
        super(1);
        this.$zIndex$inlined = f;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("zIndex");
        inspectorInfo.c(Float.valueOf(this.$zIndex$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
