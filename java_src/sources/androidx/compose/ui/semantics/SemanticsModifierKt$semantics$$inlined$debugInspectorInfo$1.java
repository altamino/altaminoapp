package androidx.compose.ui.semantics;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class SemanticsModifierKt$semantics$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $mergeDescendants$inlined;
    final /* synthetic */ l $properties$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SemanticsModifierKt$semantics$$inlined$debugInspectorInfo$1(boolean z6, l lVar) {
        super(1);
        this.$mergeDescendants$inlined = z6;
        this.$properties$inlined = lVar;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("semantics");
        inspectorInfo.a().c("mergeDescendants", Boolean.valueOf(this.$mergeDescendants$inlined));
        inspectorInfo.a().c("properties", this.$properties$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
