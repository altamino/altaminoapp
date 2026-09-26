package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.InspectorInfo;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SizeKt$createFillHeightModifier$1 extends v implements e8.l<InspectorInfo, l0> {
    final /* synthetic */ float $fraction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SizeKt$createFillHeightModifier$1(float f) {
        super(1);
        this.$fraction = f;
    }

    public final void a(@NotNull InspectorInfo $receiver) {
        t.j($receiver, "$this$$receiver");
        $receiver.b("fillMaxHeight");
        $receiver.a().c("fraction", Float.valueOf(this.$fraction));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(InspectorInfo inspectorInfo) {
        a(inspectorInfo);
        return l0.INSTANCE;
    }
}
