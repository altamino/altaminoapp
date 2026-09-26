package androidx.compose.foundation;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.BackgroundKt$background-bw27NRU$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes10.dex */
public final class BackgroundKt$backgroundbw27NRU$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ long $color$inlined;
    final /* synthetic */ Shape $shape$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BackgroundKt$backgroundbw27NRU$$inlined$debugInspectorInfo$1(long j6, Shape shape) {
        super(1);
        this.$color$inlined = j6;
        this.$shape$inlined = shape;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("background");
        inspectorInfo.c(Color.h(this.$color$inlined));
        inspectorInfo.a().c("color", Color.h(this.$color$inlined));
        inspectorInfo.a().c("shape", this.$shape$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
