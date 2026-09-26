package com.narvii.checkin;

import com.narvii.prompt.AccountPopUpUtils;
import com.narvii.wallet.AdsService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class CheckInService$ads$2 extends v implements e8.a<AdsService> {
    final /* synthetic */ CheckInService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckInService$ads$2(CheckInService checkInService) {
        super(0);
        this.this$0 = checkInService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final AdsService invoke() {
        return (AdsService) this.this$0.getCtx().getService(AccountPopUpUtils.POPUP_TYPE_ADS);
    }
}
