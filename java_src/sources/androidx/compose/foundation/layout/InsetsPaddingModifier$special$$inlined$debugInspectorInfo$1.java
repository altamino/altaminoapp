package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class InsetsPaddingModifier$special$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ WindowInsets $insets$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsetsPaddingModifier$special$$inlined$debugInspectorInfo$1(WindowInsets windowInsets) {
        super(1);
        this.$insets$inlined = windowInsets;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("InsetsPaddingModifier");
        inspectorInfo.a().c("insets", this.$insets$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
