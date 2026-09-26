package androidx.compose.ui.input.pointer;

import androidx.compose.ui.platform.InspectorInfo;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1 extends v implements l<InspectorInfo, l0> {
    final /* synthetic */ PointerIcon $icon$inlined;
    final /* synthetic */ boolean $overrideDescendants$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerIconKt$pointerHoverIcon$$inlined$debugInspectorInfo$1(PointerIcon pointerIcon, boolean z6) {
        super(1);
        this.$icon$inlined = pointerIcon;
        this.$overrideDescendants$inlined = z6;
    }

    public final void a(@NotNull InspectorInfo inspectorInfo) {
        t.j(inspectorInfo, "$this$null");
        inspectorInfo.b("pointerHoverIcon");
        inspectorInfo.a().c("icon", this.$icon$inlined);
        inspectorInfo.a().c("overrideDescendants", Boolean.valueOf(this.$overrideDescendants$inlined));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
