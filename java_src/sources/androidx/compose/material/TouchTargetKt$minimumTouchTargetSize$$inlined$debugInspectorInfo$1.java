package androidx.compose.material;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    public TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1() {
        super(1);
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("minimumTouchTargetSize");
        inspectorInfo.a().c("README", "Adds outer padding to measure at least 48.dp (default) in size to disambiguate touch interactions if the element would measure smaller");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
