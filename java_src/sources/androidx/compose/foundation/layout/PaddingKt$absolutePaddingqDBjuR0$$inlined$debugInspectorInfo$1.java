package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.PaddingKt$absolutePadding-qDBjuR0$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes9.dex */
public final class PaddingKt$absolutePaddingqDBjuR0$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ float $bottom$inlined;
    final /* synthetic */ float $left$inlined;
    final /* synthetic */ float $right$inlined;
    final /* synthetic */ float $top$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddingKt$absolutePaddingqDBjuR0$$inlined$debugInspectorInfo$1(float f, float f6, float f7, float f10) {
        super(1);
        this.$left$inlined = f;
        this.$top$inlined = f6;
        this.$right$inlined = f7;
        this.$bottom$inlined = f10;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("absolutePadding");
        inspectorInfo.a().c("left", Dp.c(this.$left$inlined));
        inspectorInfo.a().c("top", Dp.c(this.$top$inlined));
        inspectorInfo.a().c("right", Dp.c(this.$right$inlined));
        inspectorInfo.a().c("bottom", Dp.c(this.$bottom$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
