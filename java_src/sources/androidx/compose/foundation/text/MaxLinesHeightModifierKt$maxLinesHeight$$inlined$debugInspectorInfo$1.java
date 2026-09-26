package androidx.compose.foundation.text;

import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.text.TextStyle;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class MaxLinesHeightModifierKt$maxLinesHeight$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ int $maxLines$inlined;
    final /* synthetic */ TextStyle $textStyle$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaxLinesHeightModifierKt$maxLinesHeight$$inlined$debugInspectorInfo$1(int i10, TextStyle textStyle) {
        super(1);
        this.$maxLines$inlined = i10;
        this.$textStyle$inlined = textStyle;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("maxLinesHeight");
        inspectorInfo.a().c("maxLines", Integer.valueOf(this.$maxLines$inlined));
        inspectorInfo.a().c("textStyle", this.$textStyle$inlined);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
