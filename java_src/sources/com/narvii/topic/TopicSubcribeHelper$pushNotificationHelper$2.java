package com.narvii.topic;

import com.narvii.account.push.PushNotificationHelper;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
final class TopicSubcribeHelper$pushNotificationHelper$2 extends v implements e8.a<PushNotificationHelper> {
    final /* synthetic */ TopicSubcribeHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TopicSubcribeHelper$pushNotificationHelper$2(TopicSubcribeHelper topicSubcribeHelper) {
        super(0);
        this.this$0 = topicSubcribeHelper;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // e8.a
    @NotNull
    public final PushNotificationHelper invoke() {
        return new PushNotificationHelper(this.this$0.getCtx());
    }
}
