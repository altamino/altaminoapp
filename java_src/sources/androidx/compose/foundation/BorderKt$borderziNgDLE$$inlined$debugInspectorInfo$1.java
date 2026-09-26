package androidx.compose.foundation;

import androidx.compose.material.OutlinedTextFieldKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.BorderKt$border-ziNgDLE$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes8.dex */
public final class BorderKt$borderziNgDLE$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ Brush $brush$inlined;
    final /* synthetic */ Shape $shape$inlined;
    final /* synthetic */ float $width$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BorderKt$borderziNgDLE$$inlined$debugInspectorInfo$1(float f, Brush brush, Shape shape) {
        super(1);
        this.$width$inlined = f;
        this.$brush$inlined = brush;
        this.$shape$inlined = shape;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b(OutlinedTextFieldKt.BorderId);
        inspectorInfo.a().c("width", Dp.c(this.$width$inlined));
        if (this.$brush$inlined instanceof SolidColor) {
            inspectorInfo.a().c("color", Color.h(((SolidColor) this.$brush$inlined).c()));
            inspectorInfo.c(Color.h(((SolidColor) this.$brush$inlined).c()));
        } else {
            inspectorInfo.a().c("brush", this.$brush$inlined);
        }
        inspectorInfo.a().c("shape", this.$shape$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
