package com.narvii.chat.detail;

import com.narvii.util.http.ApiService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadAnnouncementFragment$api$2 extends v implements e8.a<ApiService> {
    final /* synthetic */ ThreadAnnouncementFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ThreadAnnouncementFragment$api$2(ThreadAnnouncementFragment threadAnnouncementFragment) {
        super(0);
        this.this$0 = threadAnnouncementFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) this.this$0.getService("api");
    }
}
