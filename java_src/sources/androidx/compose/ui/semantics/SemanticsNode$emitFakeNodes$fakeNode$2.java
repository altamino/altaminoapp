package androidx.compose.ui.semantics;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class SemanticsNode$emitFakeNodes$fakeNode$2 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ String $contentDescription;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SemanticsNode$emitFakeNodes$fakeNode$2(String str) {
        super(1);
        this.$contentDescription = str;
    }

    public final void a(@NotNull SemanticsPropertyReceiver fakeSemanticsNode) {
        t.j(fakeSemanticsNode, "$this$fakeSemanticsNode");
        SemanticsPropertiesKt.G(fakeSemanticsNode, this.$contentDescription);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
