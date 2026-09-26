package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class PainterModifierKt$paint$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ Alignment $alignment$inlined;
    final /* synthetic */ float $alpha$inlined;
    final /* synthetic */ ColorFilter $colorFilter$inlined;
    final /* synthetic */ ContentScale $contentScale$inlined;
    final /* synthetic */ Painter $painter$inlined;
    final /* synthetic */ boolean $sizeToIntrinsics$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PainterModifierKt$paint$$inlined$debugInspectorInfo$1(Painter painter, boolean z6, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter) {
        super(1);
        this.$painter$inlined = painter;
        this.$sizeToIntrinsics$inlined = z6;
        this.$alignment$inlined = alignment;
        this.$contentScale$inlined = contentScale;
        this.$alpha$inlined = f;
        this.$colorFilter$inlined = colorFilter;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("paint");
        inspectorInfo.a().c("painter", this.$painter$inlined);
        inspectorInfo.a().c("sizeToIntrinsics", Boolean.valueOf(this.$sizeToIntrinsics$inlined));
        inspectorInfo.a().c("alignment", this.$alignment$inlined);
        inspectorInfo.a().c("contentScale", this.$contentScale$inlined);
        inspectorInfo.a().c("alpha", Float.valueOf(this.$alpha$inlined));
        inspectorInfo.a().c("colorFilter", this.$colorFilter$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
