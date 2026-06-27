package com.narvii.story;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.story.StoryListFragment;
import com.narvii.story.base.StoryDataSource;
import com.narvii.story.base.StoryListAdapter;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryFeedListFragment.kt */
/* loaded from: classes3.dex */
public final class StoryFeedListFragment extends SubTypeStoryBaseListFragment {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_TYPE = "type";
    private HashMap _$_findViewCache;
    private View contentView;

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.app.theme.NVThemeFragment
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "StoryFeed";
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    protected boolean observeThemeDownloadFinish() {
        return true;
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final View getContentView() {
        return this.contentView;
    }

    public final void setContentView(View view) {
        this.contentView = view;
    }

    /* compiled from: StoryFeedListFragment.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.contentView = view;
        ConfigService configService = (ConfigService) getService("config");
        Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
        view.setBackgroundColor(configService.getTheme().colorPrimary());
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this);
        recyclerViewColumnAdapter.setAdapter(new StoryFeedListAdapter(this, this), 2);
        return recyclerViewColumnAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        NVRecyclerView recyclerView = this.recyclerView;
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setLayoutFrozen(true);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        NVRecyclerView recyclerView = this.recyclerView;
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        recyclerView.setLayoutFrozen(false);
    }

    @Override // com.narvii.story.SubTypeStoryBaseListFragment, com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new LinearLayoutManager(getContext());
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverVideoListDelegate(this, getActivity());
    }

    /* compiled from: StoryFeedListFragment.kt */
    public final class StoryFeedListAdapter extends com.narvii.story.base.StoryListAdapter {
        final /* synthetic */ StoryFeedListFragment this$0;

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "FeedsList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoryFeedListAdapter(StoryFeedListFragment storyFeedListFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = storyFeedListFragment;
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            return this.this$0.new DataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Blog.class));
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            Blog item;
            NicknameView nicknameView;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            super.onBindItemViewHolder(holder, i);
            if (!(holder instanceof StoryListAdapter.StoryItemViewHolder) || (item = getItem(i - (showHeaderView() ? 1 : 0))) == null) {
                return;
            }
            StoryListAdapter.StoryItemViewHolder storyItemViewHolder = (StoryListAdapter.StoryItemViewHolder) holder;
            if (storyItemViewHolder.getStoryCardView() != null) {
                StoryCardView storyCardView = storyItemViewHolder.getStoryCardView();
                if (storyCardView != null && (nicknameView = storyCardView.getNicknameView()) != null) {
                    nicknameView.setHideRankingBadge(true);
                    nicknameView.setHideInfluencerBadge(false);
                }
                NVVideoListDelegate.markVideoCell((View) storyItemViewHolder.getStoryCardView(), R.id.img, item.isContentAccessible() ? item.getPreviewVideoList(false) : new ArrayList<>(), (item.getFeedPreviewMediaList() == null || item.getFeedPreviewMediaList().size() <= 0) ? null : item.getFeedPreviewMediaList().get(0), (NVObject) item, 1, false);
            }
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
            new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).showCommentBar(true).initFeedCommunity(community).source(StoryApi.COMMUNITY_PLAYER).initFeedUser(user).build());
        }
    }

    /* compiled from: StoryFeedListFragment.kt */
    public final class DataSource extends StoryDataSource {
        /* JADX WARN: Illegal instructions before constructor call */
        public DataSource(NVContext nVContext) {
            PagingConfiguration pagingConfiguration = PagingConfiguration.OFFSET_CONFIG;
            Intrinsics.checkExpressionValueIsNotNull(pagingConfiguration, "PagingConfiguration.OFFSET_CONFIG");
            super(nVContext, pagingConfiguration);
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.path("blog");
            builder.param("type", StoryFeedListFragment.this.getStringParam("type"));
            return builder.build();
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.story.base.StoryDataSource
        public void onDataSourceResponse(ApiRequest req, BlogListResponse resp) {
            Intrinsics.checkParameterIsNotNull(req, "req");
            Intrinsics.checkParameterIsNotNull(resp, "resp");
            super.onDataSourceResponse(req, resp);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void updateThemeUI() {
        super.updateThemeUI();
        View view = this.contentView;
        if (view != null) {
            ConfigService configService = (ConfigService) getService("config");
            Intrinsics.checkExpressionValueIsNotNull(configService, "configService");
            view.setBackgroundColor(configService.getTheme().colorPrimary());
        }
    }
}
