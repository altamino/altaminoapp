package com.narvii.master.home.discover;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.narvii.account.AccountService;
import com.narvii.adapter.recyclerview.OverlayThemeTopOffsetAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.language.LanguageChangeListener;
import com.narvii.logging.Impression.DivideColumnImpressionCollector;
import com.narvii.master.home.story.CommentSheetDisplayHost;
import com.narvii.master.theme.MasterThemeExtensionKt;
import com.narvii.master.widget.MasterBottomOffsetAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewColumnAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.source.PageRequestCallback;
import com.narvii.paging.source.PagingConfiguration;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListFragment;
import com.narvii.story.base.StoryDataSource;
import com.narvii.story.base.StoryListAdapter;
import com.narvii.story.widgets.StoryCardView;
import com.narvii.suggest.interest.InterestPickerFragment;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NicknameView;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: DiscoverStoryFeedListFragment.kt */
/* loaded from: classes3.dex */
public final class DiscoverStoryFeedListFragment extends NVRecyclerViewFragment implements LanguageChangeListener, CommentSheetDisplayHost {
    private HashMap _$_findViewCache;
    private FrameLayout bottomSheetLayout;
    public ContentLanguageService languageService;
    private long lastPauseTime;
    private final int AUTO_REFRESH_PAUSE_THRESHOLD = 1200000;
    private final DiscoverStoryFeedListFragment$receiver$1 receiver = new BroadcastReceiver() { // from class: com.narvii.master.home.discover.DiscoverStoryFeedListFragment$receiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(intent, "intent");
            if (Intrinsics.areEqual(AccountService.ACTION_ACCOUNT_CHANGED, intent.getAction())) {
                NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter2 = ((NVRecyclerViewFragment) this.this$0).adapter;
                if (nVRecyclerViewBaseAdapter2 != null) {
                    nVRecyclerViewBaseAdapter2.resetList();
                    return;
                }
                return;
            }
            if (!Intrinsics.areEqual(InterestPickerFragment.INTEREST_CHANGED, intent.getAction()) || (nVRecyclerViewBaseAdapter = ((NVRecyclerViewFragment) this.this$0).adapter) == null) {
                return;
            }
            nVRecyclerViewBaseAdapter.refresh(0, null);
        }
    };

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
        return "ForYou";
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

    @Override // com.narvii.app.NVFragment
    protected boolean sendPageViewEventToThirdParty() {
        return true;
    }

    public final long getLastPauseTime() {
        return this.lastPauseTime;
    }

    public final void setLastPauseTime(long j) {
        this.lastPauseTime = j;
    }

    public final ContentLanguageService getLanguageService() {
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    public final void setLanguageService(ContentLanguageService contentLanguageService) {
        Intrinsics.checkParameterIsNotNull(contentLanguageService, "<set-?>");
        this.languageService = contentLanguageService;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
        this.languageService = (ContentLanguageService) service;
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        contentLanguageService.registerLanguageChangeListener(this);
        registerLocalReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
        registerLocalReceiver(this.receiver, new IntentFilter(InterestPickerFragment.INTEREST_CHANGED));
        if (isRootFragment()) {
            setTitle(R.string.discover);
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_discover_story_list, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        unregisterLocalReceiver(this.receiver);
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService != null) {
            contentLanguageService.unRegisterLanguageChangeListener(this);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        setGlobalEmptyView(R.layout.discover_empty_view);
        if (isRootFragment()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.checkExpressionValueIsNotNull(childFragmentManager, "childFragmentManager");
            MasterThemeExtensionKt.addMasterThemeFragment(childFragmentManager);
        } else {
            NVRecyclerView nVRecyclerView = this.recyclerView;
            if (nVRecyclerView != null) {
                nVRecyclerView.addOnScrollListener(new AnonymousClass1());
            }
        }
    }

    /* compiled from: DiscoverStoryFeedListFragment.kt */
    /* renamed from: com.narvii.master.home.discover.DiscoverStoryFeedListFragment$onViewCreated$1, reason: invalid class name */
    public static final class AnonymousClass1 extends RecyclerView.OnScrollListener {
        AnonymousClass1() {
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrolled(final RecyclerView recyclerView, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, i, i2);
            Utils.post(new Runnable() { // from class: com.narvii.master.home.discover.DiscoverStoryFeedListFragment$onViewCreated$1$onScrolled$1
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoverStoryFeedListFragment.this.preload(recyclerView);
                }
            });
        }

        @Override // android.support.v7.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            Intrinsics.checkParameterIsNotNull(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i);
            if (i == 0) {
                DiscoverStoryFeedListFragment.this.preload(recyclerView);
            }
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        StoryFeedListAdapter storyFeedListAdapter = new StoryFeedListAdapter(this, this);
        RecyclerViewColumnAdapter recyclerViewColumnAdapter = new RecyclerViewColumnAdapter(this);
        recyclerViewColumnAdapter.setAdapter(storyFeedListAdapter, 2);
        if (isRootFragment()) {
            recyclerViewMergeAdapter.addAdapter(new OverlayThemeTopOffsetAdapter(this));
        }
        recyclerViewMergeAdapter.addAdapter(recyclerViewColumnAdapter, true);
        recyclerViewMergeAdapter.addAdapter(new MasterBottomOffsetAdapter(this));
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
        if (!z) {
            recordPauseTime();
        } else {
            checkIfRefresh();
        }
    }

    private final void checkIfRefresh() {
        if (this.adapter == null || this.lastPauseTime == 0 || SystemClock.elapsedRealtime() - this.lastPauseTime <= this.AUTO_REFRESH_PAUSE_THRESHOLD) {
            return;
        }
        this.adapter.resetList();
    }

    private final void recordPauseTime() {
        this.lastPauseTime = SystemClock.elapsedRealtime();
    }

    @Override // com.narvii.language.LanguageChangeListener
    public void onLanguageChanged(String str) {
        NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter = this.adapter;
        if (nVRecyclerViewBaseAdapter != null) {
            nVRecyclerViewBaseAdapter.resetList();
        }
    }

    /* compiled from: DiscoverStoryFeedListFragment.kt */
    public final class StoryFeedListAdapter extends StoryListAdapter {
        final /* synthetic */ DiscoverStoryFeedListFragment this$0;

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "StoryList";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoryFeedListAdapter(DiscoverStoryFeedListFragment discoverStoryFeedListFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = discoverStoryFeedListFragment;
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            return new StoryListAdapter.DataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new DivideColumnImpressionCollector(Blog.class));
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        protected void onBindItemViewHolder(RecyclerView.ViewHolder holder, int i) {
            NicknameView nicknameView;
            Intrinsics.checkParameterIsNotNull(holder, "holder");
            super.onBindItemViewHolder(holder, i);
            if (holder instanceof StoryListAdapter.StoryItemViewHolder) {
                Blog item = getItem(i - (showHeaderView() ? 1 : 0));
                if (item != null) {
                    StoryListAdapter.StoryItemViewHolder storyItemViewHolder = (StoryListAdapter.StoryItemViewHolder) holder;
                    if (storyItemViewHolder.getStoryCardView() != null) {
                        NVVideoListDelegate.markVideoCell((View) storyItemViewHolder.getStoryCardView(), R.id.img, item.isContentAccessible() ? item.getPreviewVideoList(false) : new ArrayList<>(), (item.getFeedPreviewMediaList() == null || item.getFeedPreviewMediaList().size() <= 0) ? null : item.getFeedPreviewMediaList().get(0), (NVObject) item, 1, false);
                    }
                }
                StoryCardView storyCardView = ((StoryListAdapter.StoryItemViewHolder) holder).getStoryCardView();
                if (storyCardView == null || (nicknameView = storyCardView.getNicknameView()) == null) {
                    return;
                }
                nicknameView.setRankingBadge(0);
            }
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
            if (this.this$0.getParentFragment() instanceof DiscoverTabFragment) {
                Fragment parentFragment = this.this$0.getParentFragment();
                if (parentFragment == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
                }
                ((DiscoverTabFragment) parentFragment).updateMasterBottomBar(true);
                StoryHelper storyHelper = new StoryHelper(this);
                Fragment parentFragment2 = this.this$0.getParentFragment();
                if (parentFragment2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
                }
                FragmentManager childFragmentManager = ((DiscoverTabFragment) parentFragment2).getChildFragmentManager();
                boolean zIsRootFragment = this.this$0.isRootFragment();
                Fragment parentFragment3 = this.this$0.getParentFragment();
                if (parentFragment3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
                }
                storyHelper.openStoryDetailInCurActivity(childFragmentManager, null, blog, community, user, view, R.id.story_list_frame, zIsRootFragment, (DiscoverTabFragment) parentFragment3).setBottomSheetLayout(this.this$0.bottomSheetLayout);
                return;
            }
            new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).initFeedCommunity(community).topicId(0).source(StoryApi.DISCOVER_PLAYER).initFeedUser(user).build());
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void refresh(int i, PageRequestCallback pageRequestCallback) {
            super.refresh(i | 1, pageRequestCallback);
        }
    }

    /* compiled from: DiscoverStoryFeedListFragment.kt */
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
            builder.global().path("topic/110/feed/story");
            builder.param("type", StoryApi.TOPIC_LIST);
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, DiscoverStoryFeedListFragment.this.getLanguageService().getRequestPrefLanguageWithLocalAsDefault());
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

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new DiscoverVideoListDelegate(this, getActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void preload(RecyclerView recyclerView) {
        if (!this.videoAutoPlay) {
        }
    }

    @Override // com.narvii.master.home.story.CommentSheetDisplayHost
    public void setBottomSheetLayout(FrameLayout frameLayout) {
        this.bottomSheetLayout = frameLayout;
    }
}
