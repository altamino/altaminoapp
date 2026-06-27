package com.narvii.story.base;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.community.CommunityHelper;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.ActSemantic;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.notification.NotificationListener;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.storage.PageOperationCallback;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.util.http.ApiRequest;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: StoryListAdapter.kt */
/* loaded from: classes3.dex */
public class StoryListAdapter extends PagingRecyclerViewAdapter<Blog, BlogListResponse> implements NotificationListener {
    private final int TYPE_HEADER;
    private final int TYPE_STORY;
    private final AccountService accountService;
    private int allItemCount;
    private final CommunityHelper communityHelper;
    private final ContentLanguageService languageService;

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "StoryList";
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemViewTypeCount() {
        return 2;
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    protected boolean isDarkTheme() {
        return true;
    }

    public int itemCellLayoutId() {
        return R.layout.item_cell_story_with_author;
    }

    public void onDataSourceResponse(ApiRequest req, BlogListResponse resp) {
        Intrinsics.checkParameterIsNotNull(req, "req");
        Intrinsics.checkParameterIsNotNull(resp, "resp");
    }

    public void onHeaderViewClicked(View view) {
    }

    public void setFirstPageRequestFinished() {
    }

    public boolean showHeaderView() {
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryListAdapter(NVContext context) {
        super(context);
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.TYPE_STORY = 1;
        this.communityHelper = new CommunityHelper(context);
        Object service = context.getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "context.getService(\"account\")");
        this.accountService = (AccountService) service;
        Object service2 = context.getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service2, "context.getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service2;
    }

    public final CommunityHelper getCommunityHelper() {
        return this.communityHelper;
    }

    public final AccountService getAccountService() {
        return this.accountService;
    }

    public final ContentLanguageService getLanguageService() {
        return this.languageService;
    }

    public final int getAllItemCount() {
        return this.allItemCount;
    }

    public final void setAllItemCount(int i) {
        this.allItemCount = i;
    }

    public final int getTYPE_HEADER() {
        return this.TYPE_HEADER;
    }

    public final int getTYPE_STORY() {
        return this.TYPE_STORY;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onNotification(com.narvii.notification.Notification r7) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.story.base.StoryListAdapter.onNotification(com.narvii.notification.Notification):void");
    }

    public View createHeaderView(ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_header_common, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…er_common, parent, false)");
        return viewInflate;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected int getItemType(int i) {
        if (showHeaderView() && i == 0) {
            return this.TYPE_HEADER;
        }
        return this.TYPE_STORY;
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected RecyclerView.ViewHolder onCreateItemViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        if (i == this.TYPE_HEADER) {
            return new HeaderItemViewHolder(this, createHeaderView(parent));
        }
        View cell = LayoutInflater.from(parent.getContext()).inflate(itemCellLayoutId(), parent, false);
        Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
        return new StoryItemViewHolder(this, cell);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        if (holder instanceof StoryItemViewHolder) {
            ((StoryItemViewHolder) holder).bindStory(getItem(i - (showHeaderView() ? 1 : 0)));
        }
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
    public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
        return new DataSource(nVContext);
    }

    @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return showHeaderView() ? super.getItemCount() + 1 : super.getItemCount();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean onItemClick(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, int i, Object obj, View view, View view2) {
        int publishNdcId;
        if (showHeaderView() && i == 0) {
            onHeaderViewClicked(view);
        } else {
            logClickEvent(obj, ActSemantic.checkDetail);
            Blog blog = getItem(i - (showHeaderView() ? 1 : 0));
            if (blog.type == 9) {
                Intrinsics.checkExpressionValueIsNotNull(blog, "blog");
                publishNdcId = blog.getPublishNdcId();
            } else {
                publishNdcId = blog.ndcId;
            }
            openStoryDetailPage(view, blog, getCommunityInfo(publishNdcId), getUserInfo(blog.ndcId));
        }
        return super.onItemClick(nVRecyclerViewBaseAdapter, i, obj, view, view2);
    }

    public final Community getCommunityInfo(int i) {
        PageOperationCallback pageOperationCallback = this.dataSource;
        if (!(pageOperationCallback instanceof StoryDataSource)) {
            return null;
        }
        if (pageOperationCallback != null) {
            return ((StoryDataSource) pageOperationCallback).getCommunityInfoMapping().get(Integer.valueOf(i));
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.base.StoryDataSource");
    }

    protected final User getUserInfo(int i) {
        PageOperationCallback pageOperationCallback = this.dataSource;
        if (!(pageOperationCallback instanceof StoryDataSource)) {
            return null;
        }
        if (pageOperationCallback != null) {
            return ((StoryDataSource) pageOperationCallback).getUserInfoMapping().get(Integer.valueOf(i));
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.story.base.StoryDataSource");
    }

    public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
        new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).autoLoadNextPage(false).showCommentBar(true).initFeedCommunity(community).initFeedUser(user).build());
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isEmpty() {
        if (showHeaderView()) {
            return false;
        }
        if (createApiRequest() == null) {
            return true;
        }
        return super.isEmpty();
    }

    @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
    public boolean isListShow() {
        if (showHeaderView()) {
            return true;
        }
        return super.isListShow();
    }

    /* compiled from: StoryListAdapter.kt */
    public final class HeaderItemViewHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ StoryListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HeaderItemViewHolder(StoryListAdapter storyListAdapter, final View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = storyListAdapter;
            itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.story.base.StoryListAdapter.HeaderItemViewHolder.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HeaderItemViewHolder.this.this$0.onHeaderViewClicked(itemView);
                }
            });
        }
    }

    /* compiled from: StoryListAdapter.kt */
    public final class StoryItemViewHolder extends RecyclerView.ViewHolder {
        private StoryCardView storyCardView;
        final /* synthetic */ StoryListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoryItemViewHolder(StoryListAdapter storyListAdapter, View itemView) {
            super(itemView);
            Intrinsics.checkParameterIsNotNull(itemView, "itemView");
            this.this$0 = storyListAdapter;
            this.storyCardView = (StoryCardView) itemView.findViewById(R.id.story_layout);
        }

        public final StoryCardView getStoryCardView() {
            return this.storyCardView;
        }

        public final void setStoryCardView(StoryCardView storyCardView) {
            this.storyCardView = storyCardView;
        }

        public final void bindStory(Blog blog) {
            StoryCardView storyCardView = this.storyCardView;
            if (storyCardView != null) {
                storyCardView.setStory(blog);
            }
        }
    }

    public ApiRequest createApiRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("topic/0/feed/story");
        builder.param("type", StoryApi.DISCOVER_LIST);
        builder.param("v", StoryApi.STORY_VERSION);
        NVContext nVContext = this.context;
        ContentLanguageService contentLanguageService = nVContext != null ? (ContentLanguageService) nVContext.getService("content_language") : null;
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService != null ? contentLanguageService.getRequestPrefLanguageWithLocalAsDefault() : null);
        return builder.build();
    }

    /* compiled from: StoryListAdapter.kt */
    public final class DataSource extends StoryDataSource {
        /* JADX WARN: Multi-variable type inference failed */
        public DataSource(NVContext nVContext) {
            super(nVContext, null, 2, 0 == true ? 1 : 0);
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            return StoryListAdapter.this.createApiRequest();
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
            StoryListAdapter.this.onDataSourceResponse(req, resp);
            StoryListAdapter.this.setAllItemCount(resp.allItemCount);
        }

        @Override // com.narvii.paging.source.PageDataSource
        public void setFirstPageRequestFinished() {
            super.setFirstPageRequestFinished();
            StoryListAdapter.this.setFirstPageRequestFinished();
        }
    }
}
