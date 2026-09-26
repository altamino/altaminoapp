package com.narvii.wallet;

import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes5.dex */
final class BusinessWalletFragment$apiService$2 extends kotlin.jvm.internal.v implements e8.a<ApiService> {
    final /* synthetic */ BusinessWalletFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BusinessWalletFragment$apiService$2(BusinessWalletFragment businessWalletFragment) {
        super(0);
        this.this$0 = businessWalletFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) this.this$0.getService("api");
    }
}
