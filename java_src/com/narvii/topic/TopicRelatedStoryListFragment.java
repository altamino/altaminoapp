package com.narvii.topic;

import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.base.StoryListAdapter;
import com.narvii.topic.adapter.StorySectionAdapter;
import com.narvii.topic.model.StorySections;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.StaticViewHolder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: TopicRelatedStoryListFragment.kt */
/* loaded from: classes3.dex */
public final class TopicRelatedStoryListFragment extends NVRecyclerViewFragment {
    private HashMap _$_findViewCache;
    private Map<String, ? extends Community> communityInfoMapping = new HashMap();
    public StorySectionAdapter myAdapter;
    public StoryListAdapter sAdapter;
    private int topicId;

    @Override // com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View view2 = getView();
        if (view2 == null) {
            return null;
        }
        View viewFindViewById = view2.findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return 2131755020;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Stories";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final int getTopicId() {
        return this.topicId;
    }

    public final void setTopicId(int i) {
        this.topicId = i;
    }

    public final StorySectionAdapter getMyAdapter() {
        StorySectionAdapter storySectionAdapter = this.myAdapter;
        if (storySectionAdapter != null) {
            return storySectionAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("myAdapter");
        throw null;
    }

    public final void setMyAdapter(StorySectionAdapter storySectionAdapter) {
        Intrinsics.checkParameterIsNotNull(storySectionAdapter, "<set-?>");
        this.myAdapter = storySectionAdapter;
    }

    public final StoryListAdapter getSAdapter() {
        StoryListAdapter storyListAdapter = this.sAdapter;
        if (storyListAdapter != null) {
            return storyListAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sAdapter");
        throw null;
    }

    public final void setSAdapter(StoryListAdapter storyListAdapter) {
        Intrinsics.checkParameterIsNotNull(storyListAdapter, "<set-?>");
        this.sAdapter = storyListAdapter;
    }

    public final Map<String, Community> getCommunityInfoMapping() {
        return this.communityInfoMapping;
    }

    public final void setCommunityInfoMapping(Map<String, ? extends Community> map) {
        Intrinsics.checkParameterIsNotNull(map, "<set-?>");
        this.communityInfoMapping = map;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.topicId = getIntParam(TopicTabFragmentKt.KEY_TOPIC_ID, 1);
        this.myAdapter = new StorySectionAdapter(this, this.topicId);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.layout_topic_empty);
        CoordinateFragmentHelperKt.setPaddingForChildFragmentInTopic(this, this.pageStatusView);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this);
        this.sAdapter = new RecommendationStoryAdapter(this);
        StoryListAdapter storyListAdapter = this.sAdapter;
        if (storyListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sAdapter");
            throw null;
        }
        recyclerViewColumnAdapter.setAdapter(storyListAdapter, 2);
        recyclerViewMergeAdapter.addAdapter(recyclerViewColumnAdapter, true);
        recyclerViewMergeAdapter.addAdapter(new BottomOffsetAdapter(this));
        recyclerViewMergeAdapter.setHasStableIds(true);
        return recyclerViewMergeAdapter;
    }

    /* compiled from: TopicRelatedStoryListFragment.kt */
    public final class RecommendationStoryAdapter extends StoryListAdapter {
        final /* synthetic */ TopicRelatedStoryListFragment this$0;

        public RecommendationStoryAdapter(TopicRelatedStoryListFragment topicRelatedStoryListFragment) {
            super(topicRelatedStoryListFragment);
            this.this$0 = topicRelatedStoryListFragment;
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public ApiRequest createApiRequest() {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("topic/" + this.this$0.getTopicId() + "/feed/story/recommendation");
            builder.param("type", StoryApi.TOPIC_LIST);
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault());
            return builder.build();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(Blog.class));
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
            new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).pathSuffix(StorySections.feedKeyApiMapper.get(StorySections.SECTION_KEY_LATEST)).topicId(this.this$0.getTopicId()).initFeedCommunity(community).initFeedUser(user).source(StoryApi.TOPIC_PLAYER).build());
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            super.onBindItemViewHolder(holder, i);
            Blog item = getItem(i);
            if (item == null || !(holder instanceof StoryListAdapter.StoryItemViewHolder)) {
                return;
            }
            StoryListAdapter.StoryItemViewHolder storyItemViewHolder = (StoryListAdapter.StoryItemViewHolder) holder;
            if (storyItemViewHolder.getStoryCardView() != null) {
                NVVideoListDelegate.markVideoCell((View) storyItemViewHolder.getStoryCardView(), R.id.img, item.isContentAccessible() ? item.getPreviewVideoList(false) : new ArrayList<>(), (item.getFeedPreviewMediaList() == null || item.getFeedPreviewMediaList().size() <= 0) ? null : item.getFeedPreviewMediaList().get(0), (NVObject) item, 1, false);
            }
        }
    }

    /* compiled from: TopicRelatedStoryListFragment.kt */
    public final class BottomOffsetAdapter extends NVRecyclerViewBaseAdapter {
        final /* synthetic */ TopicRelatedStoryListFragment this$0;

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return 1;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, int i) {
            Intrinsics.checkParameterIsNotNull(holder, "holder");
        }

        public BottomOffsetAdapter(TopicRelatedStoryListFragment topicRelatedStoryListFragment) {
            super(topicRelatedStoryListFragment);
            this.this$0 = topicRelatedStoryListFragment;
        }

        @Override // android.support.v7.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int i) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            return new StaticViewHolder(new OverlayListPlaceholder(parent.getContext()));
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverVideoListDelegate(this, getActivity());
    }
}
