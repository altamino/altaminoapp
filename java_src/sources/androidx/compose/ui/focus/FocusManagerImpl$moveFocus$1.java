package androidx.compose.ui.focus;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class FocusManagerImpl$moveFocus$1 extends v implements l<FocusModifier, Boolean> {
    final /* synthetic */ FocusModifier $source;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FocusManagerImpl$moveFocus$1(FocusModifier focusModifier) {
        super(1);
        this.$source = focusModifier;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull FocusModifier destination) {
        t.j(destination, "destination");
        if (t.e(destination, this.$source)) {
            return Boolean.FALSE;
        }
        if (destination.n() == null) {
            throw new IllegalStateException("Move focus landed at the root.".toString());
        }
        FocusTransactionsKt.h(destination);
        return Boolean.TRUE;
    }
}
