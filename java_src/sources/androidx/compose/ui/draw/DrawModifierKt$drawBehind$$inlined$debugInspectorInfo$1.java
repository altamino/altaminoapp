package androidx.compose.ui.draw;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class DrawModifierKt$drawBehind$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $onDraw$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DrawModifierKt$drawBehind$$inlined$debugInspectorInfo$1(l lVar) {
        super(1);
        this.$onDraw$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("drawBehind");
        inspectorInfo.a().c("onDraw", this.$onDraw$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
