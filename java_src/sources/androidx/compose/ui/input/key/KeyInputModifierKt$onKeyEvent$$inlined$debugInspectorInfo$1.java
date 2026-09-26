package androidx.compose.ui.input.key;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class KeyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $onKeyEvent$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KeyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1(l lVar) {
        super(1);
        this.$onKeyEvent$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("onKeyEvent");
        inspectorInfo.a().c("onKeyEvent", this.$onKeyEvent$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
