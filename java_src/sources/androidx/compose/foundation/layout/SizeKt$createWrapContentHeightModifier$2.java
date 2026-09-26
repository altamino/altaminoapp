package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SizeKt$createWrapContentHeightModifier$2 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ Alignment.Vertical $align;
    final /* synthetic */ boolean $unbounded;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeKt$createWrapContentHeightModifier$2(Alignment.Vertical vertical, boolean z6) {
        super(1);
        this.$align = vertical;
        this.$unbounded = z6;
    }

    public final void a(@NotNull InspectorInfo $receiver) {
        t.j($receiver, "$this$$receiver");
        $receiver.b("wrapContentHeight");
        $receiver.a().c("align", this.$align);
        $receiver.a().c("unbounded", Boolean.valueOf(this.$unbounded));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
