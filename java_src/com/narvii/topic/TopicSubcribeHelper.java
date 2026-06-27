package com.narvii.topic;

import android.os.Vibrator;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: TopicSubcribeHelper.kt */
/* loaded from: classes3.dex */
public final class TopicSubcribeHelper {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(TopicSubcribeHelper.class), "pushNotificationHelper", "getPushNotificationHelper()Lcom/narvii/account/push/PushNotificationHelper;"))};
    private final NVContext ctx;
    private final Lazy pushNotificationHelper$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    public final PushNotificationHelper getPushNotificationHelper() {
        Lazy lazy = this.pushNotificationHelper$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (PushNotificationHelper) lazy.getValue();
    }

    public TopicSubcribeHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
        this.pushNotificationHelper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<PushNotificationHelper>() { // from class: com.narvii.topic.TopicSubcribeHelper$pushNotificationHelper$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PushNotificationHelper invoke() {
                return new PushNotificationHelper(this.this$0.getCtx());
            }
        });
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void sendTopicSubscribeRequest(int i, final StoryTopic storyTopic, final int i2, final Callback<RequestResult> callback, final boolean z) {
        ApiService apiService = (ApiService) this.ctx.getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        if (i2 == 1) {
            builder.post();
        } else {
            builder.delete();
        }
        builder.path("topic/" + i + "/subscription");
        apiService.exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.topic.TopicSubcribeHelper.sendTopicSubscribeRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                super.onFinish(apiRequest, apiResponse);
                StoryTopic storyTopic2 = storyTopic;
                if (storyTopic2 != null) {
                    int i3 = storyTopic2.subscriptionStatus;
                    int i4 = i2;
                    if (i3 != i4) {
                        storyTopic2.subscriptionStatus = i4;
                    }
                }
                if (z) {
                    NotificationCenter notificationCenter = (NotificationCenter) TopicSubcribeHelper.this.getCtx().getService("notification");
                    TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
                    topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
                    StoryTopic storyTopic3 = storyTopic;
                    topicNotificationStub.topic = storyTopic3;
                    topicNotificationStub.id = storyTopic3 != null ? storyTopic3.id() : null;
                    notificationCenter.sendNotification(new Notification("update", topicNotificationStub));
                }
                RequestResult requestResult = new RequestResult(0, storyTopic);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
                StoryTopic storyTopic4 = storyTopic;
                if (storyTopic4 == null || !storyTopic4.isNotified()) {
                    return;
                }
                TopicSubcribeHelper.this.vibrate();
                PushNotificationHelper pushNotificationHelper = TopicSubcribeHelper.this.getPushNotificationHelper();
                String str = storyTopic.name;
                Intrinsics.checkExpressionValueIsNotNull(str, "topic.name");
                if (pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_TOPIC, str)) {
                    return;
                }
                TopicSubcribeHelper.this.showSuccessToast();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i3, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                RequestResult requestResult = new RequestResult(1, str);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
                NVToast.makeText(TopicSubcribeHelper.this.getCtx().getContext(), str, 0).show();
            }
        });
    }

    public final void vibrate() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            if (systemService == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.os.Vibrator");
            }
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }

    public final void showSuccessToast() {
        Utils.showShortToast(this.ctx.getContext(), this.ctx.getContext().getString(R.string.enable_notification_success_hint));
    }
}
