package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    public WindowInsetsPadding_androidKt$navigationBarsPadding$$inlined$debugInspectorInfo$1() {
        super(1);
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("navigationBarsPadding");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
