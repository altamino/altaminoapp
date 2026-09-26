package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class FocusableKt$focusable$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FocusableKt$focusable$$inlined$debugInspectorInfo$1(boolean z6, MutableInteractionSource mutableInteractionSource) {
        super(1);
        this.$enabled$inlined = z6;
        this.$interactionSource$inlined = mutableInteractionSource;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("focusable");
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
