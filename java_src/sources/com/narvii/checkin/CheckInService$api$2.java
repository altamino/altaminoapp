package com.narvii.checkin;

import com.narvii.util.http.ApiService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes.dex */
final class CheckInService$api$2 extends v implements e8.a<ApiService> {
    final /* synthetic */ CheckInService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CheckInService$api$2(CheckInService checkInService) {
        super(0);
        this.this$0 = checkInService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) this.this$0.getCtx().getService("api");
    }
}
