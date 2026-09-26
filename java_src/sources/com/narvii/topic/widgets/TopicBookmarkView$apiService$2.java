package com.narvii.topic.widgets;

import android.content.Context;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiService;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes6.dex */
final class TopicBookmarkView$apiService$2 extends v implements e8.a<ApiService> {
    final /* synthetic */ Context $context;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TopicBookmarkView$apiService$2(Context context) {
        super(0);
        this.$context = context;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    public final ApiService invoke() {
        return (ApiService) Utils.getNVContext(this.$context).getService("api");
    }
}
