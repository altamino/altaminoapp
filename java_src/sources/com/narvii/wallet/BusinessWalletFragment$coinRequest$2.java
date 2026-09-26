package com.narvii.wallet;

import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes5.dex */
final class BusinessWalletFragment$coinRequest$2 extends kotlin.jvm.internal.v implements e8.a<ApiRequest> {
    public static final BusinessWalletFragment$coinRequest$2 INSTANCE = new BusinessWalletFragment$coinRequest$2();

    BusinessWalletFragment$coinRequest$2() {
        super(0);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiRequest invoke() {
        return ApiRequest.builder().path("/wallet/business-coin/stats").param("timezone", Integer.valueOf(Utils.getTimeZoneInMin())).build();
    }
}
