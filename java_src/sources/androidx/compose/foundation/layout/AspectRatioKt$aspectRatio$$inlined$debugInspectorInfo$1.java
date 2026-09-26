package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class AspectRatioKt$aspectRatio$$inlined$debugInspectorInfo$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ boolean $matchHeightConstraintsFirst$inlined;
    final /* synthetic */ float $ratio$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AspectRatioKt$aspectRatio$$inlined$debugInspectorInfo$1(float f, boolean z6) {
        super(1);
        this.$ratio$inlined = f;
        this.$matchHeightConstraintsFirst$inlined = z6;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("aspectRatio");
        inspectorInfo.a().c("ratio", Float.valueOf(this.$ratio$inlined));
        inspectorInfo.a().c("matchHeightConstraintsFirst", Boolean.valueOf(this.$matchHeightConstraintsFirst$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
