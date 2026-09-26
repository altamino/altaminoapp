package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.PaddingKt$padding-qDBjuR0$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes7.dex */
public final class PaddingKt$paddingqDBjuR0$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ float $bottom$inlined;
    final /* synthetic */ float $end$inlined;
    final /* synthetic */ float $start$inlined;
    final /* synthetic */ float $top$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PaddingKt$paddingqDBjuR0$$inlined$debugInspectorInfo$1(float f, float f6, float f7, float f10) {
        super(1);
        this.$start$inlined = f;
        this.$top$inlined = f6;
        this.$end$inlined = f7;
        this.$bottom$inlined = f10;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("padding");
        inspectorInfo.a().c("start", Dp.c(this.$start$inlined));
        inspectorInfo.a().c("top", Dp.c(this.$top$inlined));
        inspectorInfo.a().c("end", Dp.c(this.$end$inlined));
        inspectorInfo.a().c("bottom", Dp.c(this.$bottom$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
