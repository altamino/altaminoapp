package androidx.compose.ui.platform;

import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import androidx.compose.ui.semantics.ScrollAxisRange;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1 extends kotlin.jvm.internal.v implements e8.a<w7.l0> {
    final /* synthetic */ ScrollObservationScope $scrollObservationScope;
    final /* synthetic */ AndroidComposeViewAccessibilityDelegateCompat this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidComposeViewAccessibilityDelegateCompat$sendScrollEventIfNeeded$1(ScrollObservationScope scrollObservationScope, AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat) {
        super(0);
        this.$scrollObservationScope = scrollObservationScope;
        this.this$0 = androidComposeViewAccessibilityDelegateCompat;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ w7.l0 invoke() {
        invoke2();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ScrollAxisRange scrollAxisRangeA = this.$scrollObservationScope.a();
        ScrollAxisRange scrollAxisRangeE = this.$scrollObservationScope.e();
        Float fB = this.$scrollObservationScope.b();
        Float fC = this.$scrollObservationScope.c();
        float fFloatValue = (scrollAxisRangeA == null || fB == null) ? 0.0f : scrollAxisRangeA.c().invoke().floatValue() - fB.floatValue();
        float fFloatValue2 = (scrollAxisRangeE == null || fC == null) ? 0.0f : scrollAxisRangeE.c().invoke().floatValue() - fC.floatValue();
        if (fFloatValue != 0.0f || fFloatValue2 != 0.0f) {
            int iP = this.this$0.P(this.$scrollObservationScope.d());
            AndroidComposeViewAccessibilityDelegateCompat.S(this.this$0, iP, 2048, 1, null, 8, null);
            AccessibilityEvent accessibilityEventP = this.this$0.p(iP, 4096);
            if (scrollAxisRangeA != null) {
                accessibilityEventP.setScrollX((int) scrollAxisRangeA.c().invoke().floatValue());
                accessibilityEventP.setMaxScrollX((int) scrollAxisRangeA.a().invoke().floatValue());
            }
            if (scrollAxisRangeE != null) {
                accessibilityEventP.setScrollY((int) scrollAxisRangeE.c().invoke().floatValue());
                accessibilityEventP.setMaxScrollY((int) scrollAxisRangeE.a().invoke().floatValue());
            }
            if (Build.VERSION.SDK_INT >= 28) {
                AndroidComposeViewAccessibilityDelegateCompat.Api28Impl.a(accessibilityEventP, (int) fFloatValue, (int) fFloatValue2);
            }
            this.this$0.Q(accessibilityEventP);
        }
        if (scrollAxisRangeA != null) {
            this.$scrollObservationScope.g(scrollAxisRangeA.c().invoke());
        }
        if (scrollAxisRangeE != null) {
            this.$scrollObservationScope.h(scrollAxisRangeE.c().invoke());
        }
    }
}
