package com.narvii.monetization.store.view;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TippingFeedbackView$createThankYouFlipAnimator$animator4$1 extends v implements e8.a<l0> {
    final /* synthetic */ TippingFeedbackView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TippingFeedbackView$createThankYouFlipAnimator$animator4$1(TippingFeedbackView tippingFeedbackView) {
        super(0);
        this.this$0 = tippingFeedbackView;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.coinMotionAnimator.start();
    }
}
