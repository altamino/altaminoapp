package com.narvii.topic.adapter;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.master.search.widgets.TopicCardView;
import com.narvii.model.story.StoryTopic;
import com.narvii.model.story.StoryTopicListResponse;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.topic.TopicNotificationStub;
import com.narvii.topic.TopicTabFragment;
import com.narvii.topic.TopicTabFragmentKt;
import com.narvii.util.JacksonUtils;
import com.narvii.util.http.ApiRequest;
import com.safedk.android.utils.Logger;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public class TopicListAdapter extends NVPagedAdapter<StoryTopic, StoryTopicListResponse> implements NotificationListener {

    @Nullable
    private ContentLanguageService languageService;

    public TopicListAdapter(@Nullable NVContext nVContext) {
        super(nVContext, 1);
        this.languageService = nVContext != null ? (ContentLanguageService) nVContext.getService("content_language") : null;
    }

    public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<StoryTopic> dataType() {
        return StoryTopic.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(@Nullable Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    @Nullable
    public ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(@Nullable Notification notification) {
        if (kotlin.jvm.internal.t.e(notification != null ? notification.action : null, "update")) {
            if ((notification != null ? notification.obj : null) instanceof TopicNotificationStub) {
                Object obj = notification.obj;
                kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub");
                if (((TopicNotificationStub) obj).topic != null) {
                    Notification notification2 = new Notification();
                    notification2.action = "update";
                    Object obj2 = notification.obj;
                    kotlin.jvm.internal.t.h(obj2, "null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub");
                    notification2.obj = ((TopicNotificationStub) obj2).topic;
                    editList(notification2, false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    public Class<? extends StoryTopicListResponse> responseType() {
        return StoryTopicListResponse.class;
    }

    public void setLanguageService(@Nullable ContentLanguageService contentLanguageService) {
        this.languageService = contentLanguageService;
    }

    public boolean showBookmark() {
        return true;
    }

    public boolean showRightChevron() {
        return false;
    }

    public boolean showSubscribeTag() {
        return false;
    }

    @Override // com.narvii.list.NVPagedAdapter
    @NotNull
    protected ApiRequest createRequest(boolean z6) {
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/topic/trending");
        ContentLanguageService languageService = getLanguageService();
        ApiRequest apiRequestBuild = builderPath.param("language", languageService != null ? languageService.getRequestPrefLanguageWithLocalAsDefault() : null).build();
        kotlin.jvm.internal.t.i(apiRequestBuild, "build(...)");
        return apiRequestBuild;
    }

    @Override // com.narvii.list.NVPagedAdapter
    @Nullable
    protected View getItemView(@Nullable Object obj, @Nullable View view, @Nullable ViewGroup viewGroup) {
        if (!(obj instanceof StoryTopic)) {
            return null;
        }
        View viewCreateView = createView(R.layout.item_cell_topic_search, viewGroup, view);
        ((TopicCardView) viewCreateView.findViewById(R.id.topic_layout)).setTopic((StoryTopic) obj, showBookmark(), showRightChevron(), showSubscribeTag());
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(@NotNull ListAdapter adapter, int i10, @NotNull Object item, @NotNull View cell, @Nullable View view) {
        kotlin.jvm.internal.t.j(adapter, "adapter");
        kotlin.jvm.internal.t.j(item, "item");
        kotlin.jvm.internal.t.j(cell, "cell");
        if (item instanceof StoryTopic) {
            logClickEvent(item, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
            intent.putExtra("topic", JacksonUtils.writeAsString(item));
            intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, ((StoryTopic) item).topicId);
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
        }
        return super.onItemClick(adapter, i10, item, cell, view);
    }
}
