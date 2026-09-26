package com.narvii.account;

import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes2.dex */
final class GlobalAccountHelper$apiService$2 extends kotlin.jvm.internal.v implements e8.a<ApiService> {
    final /* synthetic */ GlobalAccountHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalAccountHelper$apiService$2(GlobalAccountHelper globalAccountHelper) {
        super(0);
        this.this$0 = globalAccountHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) this.this$0.getCtx().getService("api");
    }
}
