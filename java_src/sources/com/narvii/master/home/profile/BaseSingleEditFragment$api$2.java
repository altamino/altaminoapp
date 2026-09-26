package com.narvii.master.home.profile;

import com.narvii.util.http.ApiService;

/* JADX INFO: loaded from: classes7.dex */
final class BaseSingleEditFragment$api$2 extends kotlin.jvm.internal.v implements e8.a<ApiService> {
    final /* synthetic */ BaseSingleEditFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BaseSingleEditFragment$api$2(BaseSingleEditFragment baseSingleEditFragment) {
        super(0);
        this.this$0 = baseSingleEditFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) this.this$0.getService("api");
    }
}
