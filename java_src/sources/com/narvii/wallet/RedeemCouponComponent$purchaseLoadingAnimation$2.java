package com.narvii.wallet;

import android.view.animation.Animation;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class RedeemCouponComponent$purchaseLoadingAnimation$2 extends kotlin.jvm.internal.v implements e8.a<Animation> {
    final /* synthetic */ RedeemCouponComponent this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RedeemCouponComponent$purchaseLoadingAnimation$2(RedeemCouponComponent redeemCouponComponent) {
        super(0);
        this.this$0 = redeemCouponComponent;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final Animation invoke() {
        return this.this$0.lazyInitPurchaseLoading();
    }
}
