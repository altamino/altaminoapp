package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.VerticalAlignmentLine;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes11.dex */
public final class ColumnScopeInstance$alignBy$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ VerticalAlignmentLine $alignmentLine$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ColumnScopeInstance$alignBy$$inlined$debugInspectorInfo$1(VerticalAlignmentLine verticalAlignmentLine) {
        super(1);
        this.$alignmentLine$inlined = verticalAlignmentLine;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("alignBy");
        inspectorInfo.c(this.$alignmentLine$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
