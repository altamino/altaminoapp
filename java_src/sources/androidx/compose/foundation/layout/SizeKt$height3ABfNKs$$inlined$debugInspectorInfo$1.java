package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.SizeKt$height-3ABfNKs$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public final class SizeKt$height3ABfNKs$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ float $height$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeKt$height3ABfNKs$$inlined$debugInspectorInfo$1(float f) {
        super(1);
        this.$height$inlined = f;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("height");
        inspectorInfo.c(Dp.c(this.$height$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
