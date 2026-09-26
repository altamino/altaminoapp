package androidx.compose.foundation;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class MagnifierKt$magnifier$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ l $magnifierCenter$inlined;
    final /* synthetic */ l $sourceCenter$inlined;
    final /* synthetic */ MagnifierStyle $style$inlined;
    final /* synthetic */ float $zoom$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierKt$magnifier$$inlined$debugInspectorInfo$1(l lVar, l lVar2, float f, MagnifierStyle magnifierStyle) {
        super(1);
        this.$sourceCenter$inlined = lVar;
        this.$magnifierCenter$inlined = lVar2;
        this.$zoom$inlined = f;
        this.$style$inlined = magnifierStyle;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b(MagnifierKt.c(0, 1, null) ? "magnifier" : "magnifier (not supported)");
        inspectorInfo.a().c("sourceCenter", this.$sourceCenter$inlined);
        inspectorInfo.a().c("magnifierCenter", this.$magnifierCenter$inlined);
        inspectorInfo.a().c("zoom", Float.valueOf(this.$zoom$inlined));
        inspectorInfo.a().c("style", this.$style$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
