package androidx.compose.ui.platform;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$semanticsModifier$1 extends kotlin.jvm.internal.v implements e8.l<SemanticsPropertyReceiver, w7.l0> {
    public static final AndroidComposeView$semanticsModifier$1 INSTANCE = new AndroidComposeView$semanticsModifier$1();

    AndroidComposeView$semanticsModifier$1() {
        super(1);
    }

    public final void a(@NotNull SemanticsPropertyReceiver $receiver) {
        kotlin.jvm.internal.t.j($receiver, "$this$$receiver");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return w7.l0.INSTANCE;
    }
}
