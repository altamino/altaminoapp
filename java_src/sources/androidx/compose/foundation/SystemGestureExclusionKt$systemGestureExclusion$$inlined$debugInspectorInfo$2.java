package androidx.compose.foundation;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$2 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $exclusion$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemGestureExclusionKt$systemGestureExclusion$$inlined$debugInspectorInfo$2(l lVar) {
        super(1);
        this.$exclusion$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("systemGestureExclusion");
        inspectorInfo.a().c("exclusion", this.$exclusion$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
