package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.SizeKt$requiredSizeIn-qDBjuR0$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class SizeKt$requiredSizeInqDBjuR0$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ float $maxHeight$inlined;
    final /* synthetic */ float $maxWidth$inlined;
    final /* synthetic */ float $minHeight$inlined;
    final /* synthetic */ float $minWidth$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeKt$requiredSizeInqDBjuR0$$inlined$debugInspectorInfo$1(float f, float f6, float f7, float f10) {
        super(1);
        this.$minWidth$inlined = f;
        this.$minHeight$inlined = f6;
        this.$maxWidth$inlined = f7;
        this.$maxHeight$inlined = f10;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("requiredSizeIn");
        inspectorInfo.a().c("minWidth", Dp.c(this.$minWidth$inlined));
        inspectorInfo.a().c("minHeight", Dp.c(this.$minHeight$inlined));
        inspectorInfo.a().c("maxWidth", Dp.c(this.$maxWidth$inlined));
        inspectorInfo.a().c("maxHeight", Dp.c(this.$maxHeight$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
