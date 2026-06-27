package com.narvii.topic;

import android.view.View;
import com.narvii.amino.mastes.R;
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
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TopicRequestHelper.kt */
/* loaded from: classes3.dex */
public final class TopicRequestHelper {
    private final NVContext ctx;

    public TopicRequestHelper(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.ctx = ctx;
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final void sendBookmarkRequest(int i, StoryTopic storyTopic, boolean z, Callback<RequestResult> callback, boolean z2) {
        String str;
        ApiRequest.Builder builder = ApiRequest.builder();
        ApiService apiService = (ApiService) this.ctx.getService("api");
        if (z) {
            str = "persona/bookmarked-topics/" + i + "/bookmark?v=2";
        } else {
            str = "persona/bookmarked-topics/" + i + "/unbookmark";
        }
        builder.post().path(str);
        apiService.exec(builder.build(), new AnonymousClass1(storyTopic, z, z2, callback, TopicBookmarkResponse.class));
    }

    /* compiled from: TopicRequestHelper.kt */
    /* renamed from: com.narvii.topic.TopicRequestHelper$sendBookmarkRequest$1, reason: invalid class name */
    public static final class AnonymousClass1 extends ApiResponseListener<TopicBookmarkResponse> {
        final /* synthetic */ Callback $callback;
        final /* synthetic */ boolean $isBookMark;
        final /* synthetic */ boolean $sendBookMarkChangeNotification;
        final /* synthetic */ StoryTopic $topic;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(StoryTopic storyTopic, boolean z, boolean z2, Callback callback, Class cls) {
            super(cls);
            this.$topic = storyTopic;
            this.$isBookMark = z;
            this.$sendBookMarkChangeNotification = z2;
            this.$callback = callback;
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, TopicBookmarkResponse topicBookmarkResponse) throws Exception {
            super.onFinish(apiRequest, (ApiRequest) topicBookmarkResponse);
            StoryTopic storyTopic = this.$topic;
            if (storyTopic != null) {
                boolean z = storyTopic.isBookmarked;
                boolean z2 = this.$isBookMark;
                if (z != z2) {
                    storyTopic.isBookmarked = z2;
                    storyTopic.subscriptionStatus = topicBookmarkResponse != null ? topicBookmarkResponse.subscriptionStatus : 0;
                    NotificationCenter notificationCenter = (NotificationCenter) TopicRequestHelper.this.getCtx().getService("notification");
                    TopicBookmarkStub topicBookmarkStub = new TopicBookmarkStub();
                    topicBookmarkStub.action = TopicBookmarkStub.ACTION_BOOKMARK_TOPIC;
                    topicBookmarkStub.topic = storyTopic;
                    topicBookmarkStub.id = storyTopic.id();
                    notificationCenter.sendNotification(new Notification(this.$isBookMark ? "new" : "delete", topicBookmarkStub));
                }
            }
            if (this.$sendBookMarkChangeNotification) {
                NotificationCenter notificationCenter2 = (NotificationCenter) TopicRequestHelper.this.getCtx().getService("notification");
                TopicNotificationStub topicNotificationStub = new TopicNotificationStub();
                topicNotificationStub.action = TopicNotificationStub.ACTION_BOOKMARK_STATE_CHANGE;
                StoryTopic storyTopic2 = this.$topic;
                topicNotificationStub.topic = storyTopic2;
                topicNotificationStub.id = storyTopic2 != null ? storyTopic2.id() : null;
                topicNotificationStub.attachObj = Boolean.valueOf(this.$isBookMark);
                notificationCenter2.sendNotification(new Notification("update", topicNotificationStub));
            }
            RequestResult requestResult = new RequestResult(0, this.$topic);
            Callback callback = this.$callback;
            if (callback != null) {
                callback.call(requestResult);
            }
        }

        @Override // com.narvii.util.http.ApiResponseListener
        public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            RequestResult requestResult = new RequestResult(1, str);
            Callback callback = this.$callback;
            if (callback != null) {
                callback.call(requestResult);
            }
            if (i == 5111) {
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(TopicRequestHelper.this.getCtx().getContext());
                aCMAlertDialog.setMessage(str);
                aCMAlertDialog.setVerticalButtons();
                aCMAlertDialog.addButton(R.string.bookmarked_topics, new View.OnClickListener() { // from class: com.narvii.topic.TopicRequestHelper$sendBookmarkRequest$1$onFail$1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TopicRequestHelper.this.getCtx().getContext().startActivity(FragmentWrapperActivity.intent(AggregationTopicFragment.class));
                    }
                });
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.show();
                return;
            }
            NVToast.makeText(TopicRequestHelper.this.getCtx().getContext(), str, 0).show();
        }
    }
}
