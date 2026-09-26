package androidx.compose.ui.platform;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class TestTagKt$testTag$1 extends kotlin.jvm.internal.v implements e8.l<SemanticsPropertyReceiver, w7.l0> {
    final /* synthetic */ String $tag;

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        kotlin.jvm.internal.t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.U(semantics, this.$tag);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return w7.l0.INSTANCE;
    }
}
