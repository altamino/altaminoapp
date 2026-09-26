package androidx.compose.foundation;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    public SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$1() {
        super(1);
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("systemGestureExclusion");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
