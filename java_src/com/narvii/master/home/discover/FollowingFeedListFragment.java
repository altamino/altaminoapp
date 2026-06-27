package com.narvii.master.home.discover;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.account.LoginActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.list.FeedAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.master.MasterTabFragment;
import com.narvii.master.MasterTopBarAvailable;
import com.narvii.master.home.story.CommentSheetDisplayHost;
import com.narvii.master.widget.MasterBottomOffsetAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.RecyclerViewMergeAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.paging.state.PageStatusView;
import com.narvii.story.StoryHelper;
import com.narvii.story.base.StoryDataSource;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.recycleview.NVRecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowingFeedListFragment.kt */
/* loaded from: classes3.dex */
public final class FollowingFeedListFragment extends NVRecyclerViewFragment implements MasterTopBarAvailable, CommentSheetDisplayHost {
    private HashMap _$_findViewCache;
    public AccountService accountService;
    private FrameLayout bottomSheetLayout;
    private View loginLayout;
    private boolean showMasterTopBar = true;

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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Following";
    }

    @Override // com.narvii.app.theme.NVThemeFragment
    public int initNVTheme() {
        return 2;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public final AccountService getAccountService() {
        AccountService accountService = this.accountService;
        if (accountService != null) {
            return accountService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountService");
        throw null;
    }

    public final void setAccountService(AccountService accountService) {
        Intrinsics.checkParameterIsNotNull(accountService, "<set-?>");
        this.accountService = accountService;
    }

    public final View getLoginLayout() {
        return this.loginLayout;
    }

    public final void setLoginLayout(View view) {
        this.loginLayout = view;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"account\")");
        this.accountService = (AccountService) service;
        if (bundle != null) {
            this.showMasterTopBar = bundle.getBoolean("showMasterTopBar");
        }
        setTitle(R.string.main_featured_title_following);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_following_feed, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkParameterIsNotNull(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putBoolean("showMasterTopBar", this.showMasterTopBar);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        RecyclerViewMergeAdapter recyclerViewMergeAdapter = new RecyclerViewMergeAdapter(this);
        recyclerViewMergeAdapter.addAdapter(new MyAdapter(this), true);
        recyclerViewMergeAdapter.addAdapter(new MasterBottomOffsetAdapter(this));
        return recyclerViewMergeAdapter;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.pageStatusView.setEmptyView(R.layout.empty_view_following_feed);
        this.pageStatusView.setEmptyMessage(R.string.following_feed_empty);
        TextView tvEmpty = this.pageStatusView.getTvEmpty();
        if (tvEmpty != null) {
            tvEmpty.setAlpha(0.5f);
        }
        View btnEmptyRetry = this.pageStatusView.getBtnEmptyRetry();
        if (btnEmptyRetry != null) {
            btnEmptyRetry.setAlpha(0.5f);
        }
        this.loginLayout = view.findViewById(R.id.login_layout);
        View viewFindViewById = view.findViewById(R.id.login);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.master.home.discover.FollowingFeedListFragment.onViewCreated.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FollowingFeedListFragment.this.startActivity(new Intent(FollowingFeedListFragment.this.getContext(), (Class<?>) LoginActivity.class));
                }
            });
        }
        updateViews();
    }

    /* compiled from: FollowingFeedListFragment.kt */
    public final class MyAdapter extends FeedAdapter {
        @Override // com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "FollowingList";
        }

        public MyAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            return FollowingFeedListFragment.this.new DataSource(nVContext);
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(Blog.class));
        }

        @Override // com.narvii.feed.list.FeedAdapter
        public void showStoryDetailPage(Feed feed, View view) {
            logClickEvent(feed, ActSemantic.checkDetail);
            StoryHelper storyHelper = new StoryHelper(this);
            FragmentActivity activity = FollowingFeedListFragment.this.getActivity();
            storyHelper.openStoryDetailInCurActivity(activity != null ? activity.getSupportFragmentManager() : null, this.dataSource, (Blog) feed, null, null, view, android.R.id.content, true, null, true);
        }
    }

    /* compiled from: FollowingFeedListFragment.kt */
    public final class DataSource extends StoryDataSource {
        public DataSource(NVContext nVContext) {
            super(nVContext, null, 2, null);
        }

        @Override // com.narvii.story.base.StoryDataSource, com.narvii.paging.source.PageDataSource
        protected ApiRequest createRequest() {
            if (FollowingFeedListFragment.this.getAccountService().hasAccount()) {
                return ApiRequest.builder().path("/feed/blog-following").param("v", 2).build();
            }
            return null;
        }

        @Override // com.narvii.paging.source.PageDataSource
        public List<Blog> filterResponseList(List<? extends Blog> list) {
            List<Blog> listFilterResponseList = super.filterResponseList(list);
            ArrayList arrayList = new ArrayList();
            if (listFilterResponseList != null) {
                for (Blog blog : listFilterResponseList) {
                    if (blog.type == 9) {
                        arrayList.add(blog);
                    }
                }
            }
            return arrayList;
        }
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    public final boolean getShowMasterTopBar() {
        return this.showMasterTopBar;
    }

    public final void setShowMasterTopBar(boolean z) {
        this.showMasterTopBar = z;
    }

    @Override // com.narvii.master.home.story.CommentSheetDisplayHost
    public void setBottomSheetLayout(FrameLayout frameLayout) {
        this.bottomSheetLayout = frameLayout;
    }

    private final void updateMasterTopBar(boolean z) throws Resources.NotFoundException {
        this.showMasterTopBar = z;
        if (getParentFragment() instanceof DiscoverTabFragment) {
            Fragment parentFragment = getParentFragment();
            if (parentFragment == null) {
                throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
            }
            if (((DiscoverTabFragment) parentFragment).getParentFragment() instanceof MasterTabFragment) {
                Fragment parentFragment2 = getParentFragment();
                if (parentFragment2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.home.discover.DiscoverTabFragment");
                }
                Fragment parentFragment3 = ((DiscoverTabFragment) parentFragment2).getParentFragment();
                if (parentFragment3 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.narvii.master.MasterTabFragment");
                }
                ((MasterTabFragment) parentFragment3).updateTopbar();
            }
        }
    }

    @Override // com.narvii.master.MasterTopBarAvailable
    public boolean isTopBarAvailable() {
        return this.showMasterTopBar;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public void updateViews() {
        int visibility;
        int visibility2;
        super.updateViews();
        PageStatusView pageStatusView = this.pageStatusView;
        Intrinsics.checkExpressionValueIsNotNull(pageStatusView, "pageStatusView");
        AccountService accountService = this.accountService;
        if (accountService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        if (accountService.hasAccount()) {
            PageStatusView pageStatusView2 = this.pageStatusView;
            Intrinsics.checkExpressionValueIsNotNull(pageStatusView2, "pageStatusView");
            visibility = pageStatusView2.getVisibility();
        } else {
            visibility = 8;
        }
        pageStatusView.setVisibility(visibility);
        NVRecyclerView recyclerView = this.recyclerView;
        Intrinsics.checkExpressionValueIsNotNull(recyclerView, "recyclerView");
        AccountService accountService2 = this.accountService;
        if (accountService2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountService");
            throw null;
        }
        if (accountService2.hasAccount()) {
            NVRecyclerView recyclerView2 = this.recyclerView;
            Intrinsics.checkExpressionValueIsNotNull(recyclerView2, "recyclerView");
            visibility2 = recyclerView2.getVisibility();
        } else {
            visibility2 = 8;
        }
        recyclerView.setVisibility(visibility2);
        View view = this.loginLayout;
        if (view != null) {
            AccountService accountService3 = this.accountService;
            if (accountService3 != null) {
                view.setVisibility(accountService3.hasAccount() ? 8 : 0);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("accountService");
                throw null;
            }
        }
    }
}
