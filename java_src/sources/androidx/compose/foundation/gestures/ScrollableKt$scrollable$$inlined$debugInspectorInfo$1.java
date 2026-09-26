package androidx.compose.foundation.gestures;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.platform.InspectorInfo;
import com.narvii.modulization.ConfigApiRequestHelper;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class ScrollableKt$scrollable$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ FlingBehavior $flingBehavior$inlined;
    final /* synthetic */ MutableInteractionSource $interactionSource$inlined;
    final /* synthetic */ Orientation $orientation$inlined;
    final /* synthetic */ OverscrollEffect $overscrollEffect$inlined;
    final /* synthetic */ boolean $reverseDirection$inlined;
    final /* synthetic */ ScrollableState $state$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableKt$scrollable$$inlined$debugInspectorInfo$1(Orientation orientation, ScrollableState scrollableState, OverscrollEffect overscrollEffect, boolean z6, boolean z10, FlingBehavior flingBehavior, MutableInteractionSource mutableInteractionSource) {
        super(1);
        this.$orientation$inlined = orientation;
        this.$state$inlined = scrollableState;
        this.$overscrollEffect$inlined = overscrollEffect;
        this.$enabled$inlined = z6;
        this.$reverseDirection$inlined = z10;
        this.$flingBehavior$inlined = flingBehavior;
        this.$interactionSource$inlined = mutableInteractionSource;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("scrollable");
        inspectorInfo.a().c("orientation", this.$orientation$inlined);
        inspectorInfo.a().c("state", this.$state$inlined);
        inspectorInfo.a().c("overscrollEffect", this.$overscrollEffect$inlined);
        inspectorInfo.a().c(ConfigApiRequestHelper.ENABLED, Boolean.valueOf(this.$enabled$inlined));
        inspectorInfo.a().c("reverseDirection", Boolean.valueOf(this.$reverseDirection$inlined));
        inspectorInfo.a().c("flingBehavior", this.$flingBehavior$inlined);
        inspectorInfo.a().c("interactionSource", this.$interactionSource$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
