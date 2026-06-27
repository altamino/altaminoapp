package com.narvii.topic.adapter;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.LogUtils;
import com.narvii.model.story.StoryTopic;
import com.narvii.paging.adapter.NVRecyclerViewAdapter;
import com.narvii.paging.source.DataSource;
import com.narvii.paging.source.SinglePageDataSource;
import com.narvii.story.widgets.StoryTopicView;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubTopicAdapter.kt */
/* loaded from: classes3.dex */
public final class SubTopicAdapter extends NVRecyclerViewAdapter<StoryTopic> {
    private ContentLanguageService languageService;
    private StoryTopic storyTopic;
    private final int topicId;
    private StoryTopicView.OnPreClickListener topicPreClickListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubTopicAdapter(NVContext context, int i) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.topicId = i;
        Object service = context.getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "context.getService<Conte…vice>(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    public final void setLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    public StoryTopicView.OnPreClickListener getTopicPreClickListener() {
        return this.topicPreClickListener;
    }

    public void setTopicPreClickListener(StoryTopicView.OnPreClickListener onPreClickListener) {
        this.topicPreClickListener = onPreClickListener;
    }

    public final void setStoryTopic(StoryTopic storyTopic) {
        this.storyTopic = storyTopic;
        refreshData();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View cell = LayoutInflater.from(parent.getContext()).inflate(R.layout.story_subtopic_view_layout, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new SubTopicViewHolder(this, cell);
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter
    public DataSource<StoryTopic> createDataSource(final NVContext context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        return new SinglePageDataSource<StoryTopic>(context) { // from class: com.narvii.topic.adapter.SubTopicAdapter$createDataSource$dataSource$1
            @Override // com.narvii.paging.source.SinglePageDataSource
            public List<StoryTopic> pageData() {
                StoryTopic storyTopic = this.this$0.storyTopic;
                if ((storyTopic != null ? storyTopic.subTopicList : null) == null) {
                    return CollectionsKt__CollectionsKt.emptyList();
                }
                List<StoryTopic> list = storyTopic.subTopicList;
                Intrinsics.checkExpressionValueIsNotNull(list, "s.subTopicList");
                return list;
            }
        };
    }

    public final void refreshData() {
        this.dataSource.loadInitData();
        notifyDataSetChanged();
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof SubTopicViewHolder) {
            StoryTopic item = getItem(i);
            Intrinsics.checkExpressionValueIsNotNull(item, "getItem(position)");
            ((SubTopicViewHolder) holder).bindStoryTopic(item);
            View view = holder.itemView;
            if (view != null) {
                LogUtils.setAttachedObject(view, getItem(i));
            }
        }
    }

    /* compiled from: SubTopicAdapter.kt */
    public final class SubTopicViewHolder extends RecyclerView.ViewHolder {
        private StoryTopicView storyTopicView;
        final /* synthetic */ SubTopicAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubTopicViewHolder(SubTopicAdapter subTopicAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = subTopicAdapter;
            View viewFindViewById = itemView.findViewById(R.id.story_topic_layout);
            Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "itemView.findViewById(R.id.story_topic_layout)");
            this.storyTopicView = (StoryTopicView) viewFindViewById;
        }

        public final StoryTopicView getStoryTopicView() {
            return this.storyTopicView;
        }

        public final void setStoryTopicView(StoryTopicView storyTopicView) {
            Intrinsics.checkParameterIsNotNull(storyTopicView, "<set-?>");
            this.storyTopicView = storyTopicView;
        }

        public final void bindStoryTopic(StoryTopic storyTopic) {
            Intrinsics.checkParameterIsNotNull(storyTopic, "storyTopic");
            this.storyTopicView.setTopic(storyTopic);
            this.storyTopicView.setClickable(true);
            this.storyTopicView.setOnPreClickListener(this.this$0.getTopicPreClickListener());
        }
    }
}
