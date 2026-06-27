package com.narvii.story;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentOnBackListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.User;
import com.narvii.model.api.BlogListResponse;
import com.narvii.notification.Notification;
import com.narvii.paging.NVRecyclerViewFragment;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import com.narvii.paging.adapter.PagingRecyclerViewAdapter;
import com.narvii.paging.source.PageDataSource;
import com.narvii.util.http.ApiRequest;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: SubTypeStoryBaseListFragment.kt */
/* loaded from: classes3.dex */
public class SubTypeStoryBaseListFragment extends NVRecyclerViewFragment implements FragmentOnBackListener {
    private HashMap _$_findViewCache;
    public AccountService accountService;
    public ContentLanguageService languageService;

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

    protected boolean addLinearIpc() {
        return true;
    }

    public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
        return null;
    }

    protected String getStoryListAreaName() {
        return "StoryList";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    public int itemCellLayoutId() {
        return R.layout.item_cell_story_with_author;
    }

    public void onAdapterNotification(PagingRecyclerViewAdapter<Blog, BlogListResponse> adapter, Notification notification) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    public void onHeaderViewClicked(View view) {
    }

    public boolean openStoryDetailPage(View view, Blog blog, Community community, User user) {
        return false;
    }

    public boolean showHeaderView() {
        return false;
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
        Object service = getService("account");
        Intrinsics.checkExpressionValueIsNotNull(service, "getService<AccountService>(\"account\")");
        this.accountService = (AccountService) service;
        Object service2 = getService("content_language");
        Intrinsics.checkExpressionValueIsNotNull(service2, "getService<ContentLangua…vice>(\"content_language\")");
        this.languageService = (ContentLanguageService) service2;
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_story_list_base, viewGroup, false);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    public RecyclerView.LayoutManager createLayoutManager() {
        return new GridLayoutManager(getContext(), 2);
    }

    @Override // com.narvii.paging.NVRecyclerViewFragment
    protected NVRecyclerViewBaseAdapter createAdapter() {
        return new MyAdapter(this, this);
    }

    public ApiRequest createApiRequest() {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.global().path("topic/0/feed/story");
        builder.param("v", StoryApi.STORY_VERSION);
        builder.param("type", StoryApi.DISCOVER_LIST);
        ContentLanguageService contentLanguageService = this.languageService;
        if (contentLanguageService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("languageService");
            throw null;
        }
        builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
        return builder.build();
    }

    /* compiled from: SubTypeStoryBaseListFragment.kt */
    public class MyAdapter extends com.narvii.story.base.StoryListAdapter {
        final /* synthetic */ SubTypeStoryBaseListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MyAdapter(SubTypeStoryBaseListFragment subTypeStoryBaseListFragment, NVContext context) {
            super(context);
            Intrinsics.checkParameterIsNotNull(context, "context");
            this.this$0 = subTypeStoryBaseListFragment;
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public ApiRequest createApiRequest() {
            return this.this$0.createApiRequest();
        }

        @Override // com.narvii.paging.adapter.NVRecyclerViewAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter
        public void onAttach() {
            super.onAttach();
            if (this.this$0.addLinearIpc()) {
                addImpressionCollector(new LinearImpressionCollector(Blog.class));
            }
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.PagingRecyclerViewAdapter
        public PageDataSource<Blog, BlogListResponse> createPageDataSource(NVContext nVContext) {
            PageDataSource<Blog, BlogListResponse> pageDataSourceCreatePageDataSource = this.this$0.createPageDataSource(nVContext);
            return pageDataSourceCreatePageDataSource != null ? pageDataSourceCreatePageDataSource : super.createPageDataSource(nVContext);
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.paging.adapter.NVRecyclerViewBaseAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return this.this$0.getStoryListAreaName();
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public boolean showHeaderView() {
            return this.this$0.showHeaderView();
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public View createHeaderView(ViewGroup parent) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            return this.this$0.createHeaderView(parent);
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void onHeaderViewClicked(View view) {
            SubTypeStoryBaseListFragment subTypeStoryBaseListFragment = this.this$0;
            subTypeStoryBaseListFragment.onHeaderViewClicked(subTypeStoryBaseListFragment.getView());
        }

        @Override // com.narvii.story.base.StoryListAdapter, com.narvii.notification.NotificationListener
        public void onNotification(Notification notification) {
            this.this$0.onAdapterNotification(this, notification);
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public int itemCellLayoutId() {
            return this.this$0.itemCellLayoutId();
        }

        @Override // com.narvii.story.base.StoryListAdapter
        public void openStoryDetailPage(View view, Blog blog, Community community, User user) {
            if (this.this$0.openStoryDetailPage(view, blog, community, user)) {
                return;
            }
            StoryHelper storyHelper = new StoryHelper(this.this$0);
            View viewFindViewById = view != null ? view.findViewById(R.id.img) : null;
            FragmentActivity activity = this.this$0.getActivity();
            storyHelper.openStoryDetailInCurActivity(activity != null ? activity.getSupportFragmentManager() : null, this.dataSource, blog, community, user, viewFindViewById, android.R.id.content, true, null);
        }
    }

    public View createHeaderView(ViewGroup parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.layout_header_common, parent, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(pare…er_common, parent, false)");
        return viewInflate;
    }

    @Override // com.narvii.app.FragmentOnBackListener
    public boolean onBackPressed(NVActivity nVActivity) {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        Fragment fragmentFindFragmentByTag = (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) ? null : supportFragmentManager.findFragmentByTag("story_detail");
        if (!(fragmentFindFragmentByTag instanceof StoryListFragment)) {
            return false;
        }
        ((StoryListFragment) fragmentFindFragmentByTag).onBackPressed(nVActivity);
        return true;
    }
}
