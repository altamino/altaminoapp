package androidx.compose.ui.layout;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class LayoutModifierKt$layout$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ q $measure$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LayoutModifierKt$layout$$inlined$debugInspectorInfo$1(q qVar) {
        super(1);
        this.$measure$inlined = qVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("layout");
        inspectorInfo.a().c("measure", this.$measure$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
