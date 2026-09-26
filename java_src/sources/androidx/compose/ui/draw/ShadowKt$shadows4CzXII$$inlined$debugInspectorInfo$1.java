package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.ui.draw.ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes4.dex */
public final class ShadowKt$shadows4CzXII$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ long $ambientColor$inlined;
    final /* synthetic */ boolean $clip$inlined;
    final /* synthetic */ float $elevation$inlined;
    final /* synthetic */ Shape $shape$inlined;
    final /* synthetic */ long $spotColor$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadowKt$shadows4CzXII$$inlined$debugInspectorInfo$1(float f, Shape shape, boolean z6, long j6, long j10) {
        super(1);
        this.$elevation$inlined = f;
        this.$shape$inlined = shape;
        this.$clip$inlined = z6;
        this.$ambientColor$inlined = j6;
        this.$spotColor$inlined = j10;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("shadow");
        inspectorInfo.a().c("elevation", Dp.c(this.$elevation$inlined));
        inspectorInfo.a().c("shape", this.$shape$inlined);
        inspectorInfo.a().c("clip", Boolean.valueOf(this.$clip$inlined));
        inspectorInfo.a().c("ambientColor", Color.h(this.$ambientColor$inlined));
        inspectorInfo.a().c("spotColor", Color.h(this.$spotColor$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
