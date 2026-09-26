package com.narvii.monetization.store.view;

import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1 extends v implements l<Float, l0> {
    final /* synthetic */ TippingFeedbackView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TippingFeedbackView$createCoinMotionAnimator$nextAnimation$1(TippingFeedbackView tippingFeedbackView) {
        super(1);
        this.this$0 = tippingFeedbackView;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Float f) {
        invoke(f.floatValue());
        return l0.INSTANCE;
    }

    public final void invoke(float f) {
        if (this.this$0.hasPlayedCoinTextAnimation || f <= 0.6666667f) {
            return;
        }
        this.this$0.hasPlayedCoinTextAnimation = true;
        this.this$0.coinTextAnimator.start();
        if (this.this$0.isHighEffect()) {
            this.this$0.cofettiView.fire();
        }
    }
}
