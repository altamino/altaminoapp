package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class RowScopeInstance$alignBy$$inlined$debugInspectorInfo$2 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ e8.l $alignmentLineBlock$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RowScopeInstance$alignBy$$inlined$debugInspectorInfo$2(e8.l lVar) {
        super(1);
        this.$alignmentLineBlock$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("alignBy");
        inspectorInfo.c(this.$alignmentLineBlock$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
