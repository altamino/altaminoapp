package com.narvii.topic;

import android.os.Vibrator;
import com.narvii.account.push.PushNotificationHelper;
import com.narvii.amino.master.R;
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
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes8.dex */
public final class TopicSubcribeHelper {

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final m pushNotificationHelper$delegate;

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public TopicSubcribeHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.pushNotificationHelper$delegate = o.a(new TopicSubcribeHelper$pushNotificationHelper$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PushNotificationHelper getPushNotificationHelper() {
        return (PushNotificationHelper) this.pushNotificationHelper$delegate.getValue();
    }

    public final void sendTopicSubscribeRequest(int i10, @Nullable final StoryTopic storyTopic, final int i11, @Nullable final Callback<RequestResult> callback, final boolean z6) {
        ApiService apiService = (ApiService) this.ctx.getService("api");
        ApiRequest.Builder builder = ApiRequest.builder();
        if (i11 == 1) {
            builder.post();
        } else {
            builder.delete();
        }
        builder.path("topic/" + i10 + "/subscription");
        apiService.exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.topic.TopicSubcribeHelper.sendTopicSubscribeRequest.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i12, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                RequestResult requestResult = new RequestResult(1, str);
                Callback<RequestResult> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
                NVToast.makeText(this.getCtx().getContext(), str, 0).show();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ApiResponse apiResponse) throws Exception {
                String strId;
                int i12;
                super.onFinish(apiRequest, apiResponse);
                StoryTopic storyTopic2 = storyTopic;
                if (storyTopic2 != null && storyTopic2.subscriptionStatus != (i12 = i11)) {
                    storyTopic2.subscriptionStatus = i12;
                }
                if (z6) {
                    NotificationCenter notificationCenter = (NotificationCenter) this.getCtx().getService("notification");
                    TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
                    StoryTopic storyTopic3 = storyTopic;
                    topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
                    topicNotificationStub.topic = storyTopic3;
                    if (storyTopic3 != null) {
                        strId = storyTopic3.id();
                    } else {
                        strId = null;
                    }
                    topicNotificationStub.id = strId;
                    notificationCenter.sendNotification(new Notification("update", topicNotificationStub));
                }
                RequestResult requestResult = new RequestResult(0, storyTopic);
                Callback<RequestResult> callback2 = callback;
                if (callback2 != null) {
                    callback2.call(requestResult);
                }
                StoryTopic storyTopic4 = storyTopic;
                if (storyTopic4 != null && storyTopic4.isNotified()) {
                    this.vibrate();
                    PushNotificationHelper pushNotificationHelper = this.getPushNotificationHelper();
                    String name = storyTopic.name;
                    t.i(name, "name");
                    if (!pushNotificationHelper.showRemindDialogIfNeeded(PushNotificationHelper.SCENARIO_SUBSCRIBE_TOPIC, name)) {
                        this.showSuccessToast();
                    }
                }
            }
        });
    }

    public final void showSuccessToast() {
        Utils.showShortToast(this.ctx.getContext(), this.ctx.getContext().getString(R.string.enable_notification_success_hint));
    }

    public final void vibrate() {
        try {
            Object systemService = this.ctx.getContext().getSystemService("vibrator");
            t.h(systemService, "null cannot be cast to non-null type android.os.Vibrator");
            ((Vibrator) systemService).vibrate(300L);
        } catch (Exception unused) {
        }
    }
}
