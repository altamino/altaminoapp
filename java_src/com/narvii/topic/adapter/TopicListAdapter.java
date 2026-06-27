package com.narvii.topic.adapter;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
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
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicListAdapter.kt */
/* loaded from: classes3.dex */
public class TopicListAdapter extends NVPagedAdapter<StoryTopic, StoryTopicListResponse> implements NotificationListener {
    private ContentLanguageService languageService;

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
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

    public TopicListAdapter(NVContext nVContext) {
        super(nVContext, 1);
        this.languageService = nVContext != null ? (ContentLanguageService) nVContext.getService("content_language") : null;
    }

    public ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    public void setLanguageService(ContentLanguageService contentLanguageService) {
        this.languageService = contentLanguageService;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<StoryTopic> dataType() {
        return StoryTopic.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends StoryTopicListResponse> responseType() {
        return StoryTopicListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected ApiRequest createRequest(boolean z) {
        ApiRequest.Builder builderPath = new ApiRequest.Builder().path("/topic/trending");
        ContentLanguageService languageService = getLanguageService();
        ApiRequest apiRequestBuild = builderPath.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, languageService != null ? languageService.getRequestPrefLanguageWithLocalAsDefault() : null).build();
        Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "ApiRequest.Builder()\n   …thLocalAsDefault).build()");
        return apiRequestBuild;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof StoryTopic)) {
            return null;
        }
        View viewCreateView = createView(R.layout.item_cell_topic_search, viewGroup, view);
        ((TopicCardView) viewCreateView.findViewById(R.id.topic_layout)).setTopic((StoryTopic) obj, showBookmark(), showRightChevron(), showSubscribeTag());
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter adapter, int i, Object item, View cell, View view) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        Intrinsics.checkParameterIsNotNull(item, "item");
        Intrinsics.checkParameterIsNotNull(cell, "cell");
        if (item instanceof StoryTopic) {
            logClickEvent(item, ActSemantic.checkDetail);
            Intent intent = FragmentWrapperActivity.intent(TopicTabFragment.class);
            intent.putExtra("topic", JacksonUtils.writeAsString(item));
            intent.putExtra(TopicTabFragmentKt.KEY_TOPIC_ID, ((StoryTopic) item).topicId);
            startActivity(intent);
        }
        return super.onItemClick(adapter, i, item, cell, view);
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if (Intrinsics.areEqual(notification != null ? notification.action : null, "update")) {
            if ((notification != null ? notification.obj : null) instanceof TopicNotificationStub) {
                Object obj = notification.obj;
                if (obj == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub");
                }
                if (((TopicNotificationStub) obj).topic != null) {
                    Notification notification2 = new Notification();
                    notification2.action = "update";
                    Object obj2 = notification.obj;
                    if (obj2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub");
                    }
                    notification2.obj = ((TopicNotificationStub) obj2).topic;
                    editList(notification2, false);
                }
            }
        }
    }
}
