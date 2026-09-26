package androidx.compose.ui.input.rotary;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class RotaryInputModifierKt$onPreRotaryScrollEvent$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $onPreRotaryScrollEvent$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RotaryInputModifierKt$onPreRotaryScrollEvent$$inlined$debugInspectorInfo$1(l lVar) {
        super(1);
        this.$onPreRotaryScrollEvent$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("onPreRotaryScrollEvent");
        inspectorInfo.a().c("onPreRotaryScrollEvent", this.$onPreRotaryScrollEvent$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
