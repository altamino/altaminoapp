package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class IndicationKt$indication$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ Indication $indication$inlined;
    final /* synthetic */ InteractionSource $interactionSource$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IndicationKt$indication$$inlined$debugInspectorInfo$1(Indication indication, InteractionSource interactionSource) {
        super(1);
        this.$indication$inlined = indication;
        this.$interactionSource$inlined = interactionSource;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("indication");
        inspectorInfo.a().c("indication", this.$indication$inlined);
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
