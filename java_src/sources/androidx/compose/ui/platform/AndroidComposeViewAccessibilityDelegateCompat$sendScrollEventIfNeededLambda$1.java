package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1 extends kotlin.jvm.internal.v implements e8.l<ScrollObservationScope, w7.l0> {
    final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeededLambda$1(AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        super(1);
        this.this$0 = androidComposeViewAccessibilityDelegateCompat;
    }

    public final void a(@NotNull ScrollObservationScope it) {
        kotlin.jvm.internal.t.j(it, "it");
        this.this$0.V(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ w7.l0 invoke(ScrollObservationScope scrollObservationScope) {
        a(scrollObservationScope);
        return w7.l0.INSTANCE;
    }
}
