package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class RowScopeInstance$weight$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ boolean $fill$inlined;
    final /* synthetic */ float $weight$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RowScopeInstance$weight$$inlined$debugInspectorInfo$1(float f, boolean z6) {
        super(1);
        this.$weight$inlined = f;
        this.$fill$inlined = z6;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("weight");
        inspectorInfo.c(Float.valueOf(this.$weight$inlined));
        inspectorInfo.a().c("weight", Float.valueOf(this.$weight$inlined));
        inspectorInfo.a().c("fill", Boolean.valueOf(this.$fill$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
