package androidx.compose.ui.focus;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ FocusRequester $focusRequester$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1(FocusRequester focusRequester) {
        super(1);
        this.$focusRequester$inlined = focusRequester;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("focusRequester");
        inspectorInfo.a().c("focusRequester", this.$focusRequester$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
