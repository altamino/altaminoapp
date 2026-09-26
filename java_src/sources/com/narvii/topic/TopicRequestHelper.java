package com.narvii.topic;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.story.StoryTopic;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationCenter;
import com.narvii.topic.picker.AggregationTopicFragment;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.RequestResult;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class TopicRequestHelper {

    @NotNull
    private final NVContext ctx;

    /* JADX INFO: renamed from: com.narvii.topic.TopicRequestHelper$sendBookmarkRequest$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<TopicBookmarkResponse> {
        final /* synthetic */ Callback<RequestResult> $callback;
        final /* synthetic */ boolean $isBookMark;
        final /* synthetic */ boolean $sendBookMarkChangeNotification;
        final /* synthetic */ StoryTopic $topic;
        final /* synthetic */ TopicRequestHelper this$0;

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(StoryTopic storyTopic, boolean z6, TopicRequestHelper topicRequestHelper, Callback<RequestResult> callback, boolean z10, Class<TopicBookmarkResponse> cls) {
            super(cls);
            this.$topic = storyTopic;
            this.$sendBookMarkChangeNotification = z6;
            this.this$0 = topicRequestHelper;
            this.$callback = callback;
            this.$isBookMark = z10;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
            RequestResult requestResult = new RequestResult(1, str);
            Callback<RequestResult> callback = this.$callback;
            if (callback != null) {
                callback.call(requestResult);
            }
            if (i10 != 5111) {
                NVToast.makeText(this.this$0.getCtx().getContext(), str, 0).show();
                return;
            }
            ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(this.this$0.getCtx().getContext());
            aCMAlertDialog.setMessage(str);
            aCMAlertDialog.setVerticalButtons();
            final TopicRequestHelper topicRequestHelper = this.this$0;
            aCMAlertDialog.addButton(R.string.bookmarked_topics, new View.OnClickListener() { // from class: com.narvii.topic.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TopicRequestHelper.AnonymousClass1.onFail$lambda$3(topicRequestHelper, view);
                }
            });
            aCMAlertDialog.addButton(R.string.cancel, null);
            aCMAlertDialog.show();
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(@Nullable ApiRequest apiRequest, @Nullable TopicBookmarkResponse topicBookmarkResponse) throws Exception {
            super.onFinish(apiRequest, topicBookmarkResponse);
            StoryTopic storyTopic = this.$topic;
            if (storyTopic != null) {
                boolean z6 = this.$isBookMark;
                TopicRequestHelper topicRequestHelper = this.this$0;
                if (storyTopic.isBookmarked != z6) {
                    storyTopic.isBookmarked = z6;
                    storyTopic.subscriptionStatus = topicBookmarkResponse != null ? topicBookmarkResponse.subscriptionStatus : 0;
                    NotificationCenter notificationCenter = (NotificationCenter) topicRequestHelper.getCtx().getService("notification");
                    TopicBookmarkStub topicBookmarkStub = new TopicBookmarkStub();
                    topicBookmarkStub.action = TopicBookmarkStub.ACTION_BOOKMARK_TOPIC;
                    topicBookmarkStub.topic = storyTopic;
                    topicBookmarkStub.id = storyTopic.id();
                    notificationCenter.sendNotification(new Notification(z6 ? "new" : "delete", topicBookmarkStub));
                }
            }
            if (this.$sendBookMarkChangeNotification) {
                NotificationCenter notificationCenter2 = (NotificationCenter) this.this$0.getCtx().getService("notification");
                TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
                StoryTopic storyTopic2 = this.$topic;
                boolean z10 = this.$isBookMark;
                topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
                topicNotificationStub.topic = storyTopic2;
                topicNotificationStub.id = storyTopic2 != null ? storyTopic2.id() : null;
                topicNotificationStub.attachObj = Boolean.valueOf(z10);
                notificationCenter2.sendNotification(new Notification("update", topicNotificationStub));
            }
            RequestResult requestResult = new RequestResult(0, this.$topic);
            Callback<RequestResult> callback = this.$callback;
            if (callback != null) {
                callback.call(requestResult);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onFail$lambda$3(TopicRequestHelper this$0, View view) {
            t.j(this$0, "this$0");
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this$0.getCtx().getContext(), FragmentWrapperActivity.intent(AggregationTopicFragment.class));
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public TopicRequestHelper(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
    }

    public final void sendBookmarkRequest(int i10, @Nullable StoryTopic storyTopic, boolean z6, @Nullable Callback<RequestResult> callback, boolean z10) {
        String str;
        ApiRequest.Builder builder = ApiRequest.builder();
        ApiService apiService = (ApiService) this.ctx.getService("api");
        if (z6) {
            str = "persona/bookmarked-topics/" + i10 + "/bookmark?v=2";
        } else {
            str = "persona/bookmarked-topics/" + i10 + "/unbookmark";
        }
        builder.post().path(str);
        apiService.exec(builder.build(), new AnonymousClass1(storyTopic, z10, this, callback, z6, TopicBookmarkResponse.class));
    }
}
