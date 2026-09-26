package androidx.compose.foundation;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ScrollKt$scroll$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ FlingBehavior $flingBehavior$inlined;
    final /* synthetic */ boolean $isScrollable$inlined;
    final /* synthetic */ boolean $isVertical$inlined;
    final /* synthetic */ boolean $reverseScrolling$inlined;
    final /* synthetic */ ScrollState $state$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollKt$scroll$$inlined$debugInspectorInfo$1(ScrollState scrollState, boolean z6, FlingBehavior flingBehavior, boolean z10, boolean z11) {
        super(1);
        this.$state$inlined = scrollState;
        this.$reverseScrolling$inlined = z6;
        this.$flingBehavior$inlined = flingBehavior;
        this.$isScrollable$inlined = z10;
        this.$isVertical$inlined = z11;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("scroll");
        inspectorInfo.a().c("state", this.$state$inlined);
        inspectorInfo.a().c("reverseScrolling", Boolean.valueOf(this.$reverseScrolling$inlined));
        inspectorInfo.a().c("flingBehavior", this.$flingBehavior$inlined);
        inspectorInfo.a().c("isScrollable", Boolean.valueOf(this.$isScrollable$inlined));
        inspectorInfo.a().c("isVertical", Boolean.valueOf(this.$isVertical$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
