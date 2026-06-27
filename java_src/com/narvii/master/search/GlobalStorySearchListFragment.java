package com.narvii.master.search;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.adapter.NVPagerStatusAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.DivideColumnAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.logging.LogEvent;
import com.narvii.master.search.FilterGlobalPostDialog;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.Blog;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayer.delegate.DiscoverVideoListDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.search.SwitchSearchListener;
import com.narvii.story.StoryApi;
import com.narvii.story.StoryHelper;
import com.narvii.story.StoryListAdapter;
import com.narvii.story.StoryListFragment;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.SearchBar;
import java.util.HashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* compiled from: GlobalStorySearchListFragment.kt */
/* loaded from: classes3.dex */
public final class GlobalStorySearchListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, FilterGlobalPostDialog.OnSearchConfigChangListener, ChangeSearchTextRegister {
    private final TmpValue<String> SEARCH_SOURCE = new TmpValue<>();
    private HashMap _$_findViewCache;
    private AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private ChangeSearchTextListener changeSearchTextListener;
    private FeedStoryAdapter feedAdapter;
    private ContentLanguageService languageService;
    private GlobalPostSearchPrefsHelper prefsHelper;
    private SearchHistoryDelegate searchHistoryDelegate;
    private TrendingStoryAdapter trendingStoryAdapter;

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
        return "Stories";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    /* compiled from: GlobalStorySearchListFragment.kt */
    /* renamed from: com.narvii.master.search.GlobalStorySearchListFragment$onCreate$2, reason: invalid class name */
    static final /* synthetic */ class AnonymousClass2 extends FunctionReference implements Function0<Boolean> {
        AnonymousClass2(GlobalStorySearchListFragment globalStorySearchListFragment) {
            super(0, globalStorySearchListFragment);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final String getName() {
            return "showSearchHistory";
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(GlobalStorySearchListFragment.class);
        }

        @Override // kotlin.jvm.internal.CallableReference
        public final String getSignature() {
            return "showSearchHistory()Z";
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(invoke2());
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2() {
            return ((GlobalStorySearchListFragment) this.receiver).showSearchHistory();
        }
    }

    public static final /* synthetic */ AminoIdMatchedAdapter access$getAminoIdMatchedAdapter$p(GlobalStorySearchListFragment globalStorySearchListFragment) {
        AminoIdMatchedAdapter aminoIdMatchedAdapter = globalStorySearchListFragment.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            return aminoIdMatchedAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
        throw null;
    }

    public static final /* synthetic */ FeedStoryAdapter access$getFeedAdapter$p(GlobalStorySearchListFragment globalStorySearchListFragment) {
        FeedStoryAdapter feedStoryAdapter = globalStorySearchListFragment.feedAdapter;
        if (feedStoryAdapter != null) {
            return feedStoryAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
        throw null;
    }

    public static final /* synthetic */ ContentLanguageService access$getLanguageService$p(GlobalStorySearchListFragment globalStorySearchListFragment) {
        ContentLanguageService contentLanguageService = globalStorySearchListFragment.languageService;
        if (contentLanguageService != null) {
            return contentLanguageService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languageService");
        throw null;
    }

    public static final /* synthetic */ GlobalPostSearchPrefsHelper access$getPrefsHelper$p(GlobalStorySearchListFragment globalStorySearchListFragment) {
        GlobalPostSearchPrefsHelper globalPostSearchPrefsHelper = globalStorySearchListFragment.prefsHelper;
        if (globalPostSearchPrefsHelper != null) {
            return globalPostSearchPrefsHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("prefsHelper");
        throw null;
    }

    public final TmpValue<String> getSEARCH_SOURCE$Amino_bundle() {
        return this.SEARCH_SOURCE;
    }

    public final ChangeSearchTextListener getChangeSearchTextListener$Amino_bundle() {
        return this.changeSearchTextListener;
    }

    public final void setChangeSearchTextListener$Amino_bundle(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        Context context = getContext();
        if (context != null) {
            this.prefsHelper = new GlobalPostSearchPrefsHelper(context, 9);
            Object service = getService("content_language");
            Intrinsics.checkExpressionValueIsNotNull(service, "getService(\"content_language\")");
            this.languageService = (ContentLanguageService) service;
            this.searchHistoryDelegate = new SearchHistoryDelegate(this, SearchPrefsHelper.PREFS_KEY_STORY);
            SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
            if (searchHistoryDelegate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
                throw null;
            }
            searchHistoryDelegate.setOnSearchHistory(new Function1<String, Unit>() { // from class: com.narvii.master.search.GlobalStorySearchListFragment.onCreate.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(String str) {
                    invoke2(str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(String text) {
                    Intrinsics.checkParameterIsNotNull(text, "text");
                    ChangeSearchTextListener changeSearchTextListener$Amino_bundle = GlobalStorySearchListFragment.this.getChangeSearchTextListener$Amino_bundle();
                    if (changeSearchTextListener$Amino_bundle != null) {
                        changeSearchTextListener$Amino_bundle.changeSearchText(text, true);
                    }
                    GlobalStorySearchListFragment.this.getSEARCH_SOURCE$Amino_bundle().set("Recent Searches");
                    GlobalStorySearchListFragment.this.onSearch(null, text);
                }
            });
            SearchHistoryDelegate searchHistoryDelegate2 = this.searchHistoryDelegate;
            if (searchHistoryDelegate2 != null) {
                searchHistoryDelegate2.setShowSearchHistory(new AnonymousClass2(this));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
                throw null;
            }
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(R.layout.fragment_global_post_search, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.master.search.GlobalStorySearchListFragment$createAdapter$mergeAdapter$1
            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public String errorMessage() {
                return null;
            }

            @Override // com.narvii.list.MergeAdapter, android.widget.BaseAdapter, android.widget.Adapter
            public boolean isEmpty() {
                return false;
            }

            @Override // com.narvii.list.MergeAdapter, com.narvii.list.NVAdapter
            public boolean isListShown() {
                return TextUtils.isEmpty(GlobalStorySearchListFragment.access$getFeedAdapter$p(this.this$0).getKeyword()) || GlobalStorySearchListFragment.access$getFeedAdapter$p(this.this$0).errorMessage() != null || super.isListShown() || GlobalStorySearchListFragment.access$getAminoIdMatchedAdapter$p(this.this$0).isListShown();
            }
        };
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
        searchHistoryDelegate.addSearchHistoryAdapters(mergeAdapter);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.trending);
        this.trendingStoryAdapter = new TrendingStoryAdapter(this, this);
        int iDpToPxInt = Utils.dpToPxInt(getContext(), 10.0f);
        DivideColumnAdapter divideColumnAdapter = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        divideColumnAdapter.setAdapter(this.trendingStoryAdapter, 2);
        sectionHeaderAdapter.setHost$Amino_bundle(this.trendingStoryAdapter);
        if (!getBooleanParam("hide_match_id_adapter", false)) {
            mergeAdapter.addAdapter(sectionHeaderAdapter);
            mergeAdapter.addAdapter(divideColumnAdapter);
        }
        DivideColumnAdapter divideColumnAdapter2 = new DivideColumnAdapter(this, iDpToPxInt, iDpToPxInt);
        this.feedAdapter = new FeedStoryAdapter(this, this);
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
        divideColumnAdapter2.setAdapter(feedStoryAdapter, 2);
        StoryStatusAdapter storyStatusAdapter = new StoryStatusAdapter(this, this);
        FeedStoryAdapter feedStoryAdapter2 = this.feedAdapter;
        if (feedStoryAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
        storyStatusAdapter.setAdapter(feedStoryAdapter2);
        if (!getBooleanParam("hide_match_id_adapter", false)) {
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
                throw null;
            }
            mergeAdapter.addAdapter(aminoIdMatchedAdapter);
        }
        mergeAdapter.addAdapter(new SearchResultHeaderAdapter(this, this));
        mergeAdapter.addAdapter(divideColumnAdapter2, true);
        mergeAdapter.addAdapter(storyStatusAdapter);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (listView != null) {
            listView.setDivider(null);
        }
        if (listView != null) {
            listView.setDividerHeight(0);
        }
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
        if (Utils.isStringEquals(str, feedStoryAdapter.getKeyword())) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            onTextChanged(null, null);
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        onSearchText(str);
        if (str != null) {
            if ((str.length() == 0) || StringUtils.isTrimEmpty(str)) {
                return;
            }
            SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
            if (searchHistoryDelegate != null) {
                searchHistoryDelegate.addSearchHistory(str);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
                throw null;
            }
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (TextUtils.isEmpty(str)) {
            FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
            if (feedStoryAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
                throw null;
            }
            feedStoryAdapter.setKeyword(null);
            FeedStoryAdapter feedStoryAdapter2 = this.feedAdapter;
            if (feedStoryAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
                throw null;
            }
            feedStoryAdapter2.resetList();
            AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
                throw null;
            }
            aminoIdMatchedAdapter.notifyKeyChange(null);
            notifyDataSetChanged();
            NVVideoListDelegate nVVideoListDelegate = (NVVideoListDelegate) this.mVideoListDelegate;
            if (nVVideoListDelegate != null) {
                nVVideoListDelegate.reset();
                nVVideoListDelegate.listViewFirstBecomeVisible();
            }
        }
    }

    private final void notifyDataSetChanged() {
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter != null) {
            feedStoryAdapter.notifyDataSetChanged();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        onSearchText(text);
        SearchHistoryDelegate searchHistoryDelegate = this.searchHistoryDelegate;
        if (searchHistoryDelegate != null) {
            searchHistoryDelegate.addSearchHistory(text);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchHistoryDelegate");
            throw null;
        }
    }

    private final void onSearchText(String str) {
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
        feedStoryAdapter.setKeyword(str);
        FeedStoryAdapter feedStoryAdapter2 = this.feedAdapter;
        if (feedStoryAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
        feedStoryAdapter2.resetList();
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("aminoIdMatchedAdapter");
            throw null;
        }
        aminoIdMatchedAdapter.notifyKeyChange(str);
        notifyDataSetChanged();
    }

    @Override // com.narvii.master.search.FilterGlobalPostDialog.OnSearchConfigChangListener
    public void onConfigChanged() {
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter != null) {
            feedStoryAdapter.resetList();
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean showSearchHistory() {
        FeedStoryAdapter feedStoryAdapter = this.feedAdapter;
        if (feedStoryAdapter != null) {
            return TextUtils.isEmpty(feedStoryAdapter.getKeyword());
        }
        Intrinsics.throwUninitializedPropertyAccessException("feedAdapter");
        throw null;
    }

    /* compiled from: GlobalStorySearchListFragment.kt */
    private final class SearchResultHeaderAdapter extends AdriftAdapter {
        final /* synthetic */ GlobalStorySearchListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchResultHeaderAdapter(GlobalStorySearchListFragment globalStorySearchListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalStorySearchListFragment;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View cell = createView(R.layout.search_result_section_header, viewGroup, view);
            cell.findViewById(R.id.filter).setOnClickListener(this.subviewClickListener);
            if (this.this$0.getBooleanParam("hide_match_id_adapter", false)) {
                View viewFindViewById = cell.findViewById(R.id.pre_key);
                Intrinsics.checkExpressionValueIsNotNull(viewFindViewById, "cell.findViewById<TextView>(R.id.pre_key)");
                Context context = getContext();
                Intrinsics.checkExpressionValueIsNotNull(context, "getContext()");
                ((TextView) viewFindViewById).setText(context.getResources().getText(R.string.stories));
            }
            Intrinsics.checkExpressionValueIsNotNull(cell, "cell");
            return cell;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.filter) {
                LogEvent.clickWildcardBuilder(this, "Filter").send();
                new FilterGlobalPostDialog(getContext(), true, this.this$0, 9).show();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            if (TextUtils.isEmpty(GlobalStorySearchListFragment.access$getFeedAdapter$p(this.this$0).getKeyword())) {
                return 0;
            }
            return super.getCount();
        }
    }

    /* compiled from: GlobalStorySearchListFragment.kt */
    private final class TrendingStoryAdapter extends StoryListAdapter {
        final /* synthetic */ GlobalStorySearchListFragment this$0;

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Trending";
        }

        @Override // com.narvii.story.StoryListAdapter
        protected boolean showCommentBarInDetailPage() {
            return true;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TrendingStoryAdapter(GlobalStorySearchListFragment globalStorySearchListFragment, NVContext ctx) {
            super(ctx, -1, "trending-list");
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalStorySearchListFragment;
            this.playerSource = StoryApi.TRENDING_PLAYER;
        }

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("/feed/story");
            builder.param("type", "trending-list");
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalStorySearchListFragment.access$getLanguageService$p(this.this$0).getRequestPrefLanguageWithLocalAsDefault());
            ApiRequest apiRequestBuild = builder.build();
            Intrinsics.checkExpressionValueIsNotNull(apiRequestBuild, "builder.build()");
            return apiRequestBuild;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            Object item;
            int count = super.getCount();
            if ((count <= 0 || !((item = getItem(0)) == NVPagedAdapter.ERROR || item == NVPagedAdapter.LOADING)) && this.this$0.showSearchHistory()) {
                return count;
            }
            return 0;
        }

        @Override // com.narvii.story.StoryListAdapter
        protected void onFirstStoryPageBecomeVisible() {
            IVideoListDelegate iVideoListDelegate = ((NVListFragment) this.this$0).mVideoListDelegate;
            if (iVideoListDelegate != null) {
                iVideoListDelegate.listViewFirstBecomeVisible();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: GlobalStorySearchListFragment.kt */
    final class FeedStoryAdapter extends StoryListAdapter {
        private String keyword;
        final /* synthetic */ GlobalStorySearchListFragment this$0;

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "StoriesSearchResult";
        }

        @Override // com.narvii.story.StoryListAdapter
        protected boolean showCommentBarInDetailPage() {
            return true;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FeedStoryAdapter(GlobalStorySearchListFragment globalStorySearchListFragment, NVContext ctx) {
            super(ctx, -1, "trending-list");
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalStorySearchListFragment;
            this.keyword = globalStorySearchListFragment.getStringParam("search_key");
            this.paginationType = 1;
            this.playerSource = StoryApi.TRENDING_PLAYER;
        }

        public final String getKeyword() {
            return this.keyword;
        }

        public final void setKeyword(String str) {
            this.keyword = str;
        }

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(this.keyword)) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("post/search");
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param("q", this.keyword);
            builder.param("searchId", SearchUtils.getSearchId(this.this$0));
            builder.param("my", Boolean.valueOf(GlobalStorySearchListFragment.access$getPrefsHelper$p(this.this$0).filterByMyAmino()));
            builder.param("orderBy", GlobalStorySearchListFragment.access$getPrefsHelper$p(this.this$0).sortBy());
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalStorySearchListFragment.access$getLanguageService$p(this.this$0).getRequestPrefLanguageWithLocalAsDefault());
            builder.param("postType", 9);
            return builder.build();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle b = super.onSaveInstanceState();
            b.putString("keyword", this.keyword);
            Intrinsics.checkExpressionValueIsNotNull(b, "b");
            return b;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle savedInstanceState) {
            Intrinsics.checkParameterIsNotNull(savedInstanceState, "savedInstanceState");
            super.onRestoreInstanceState(savedInstanceState);
            this.keyword = savedInstanceState.getString("keyword");
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            Object item;
            if ((super.getCount() <= 0 || !((item = getItem(0)) == NVPagedAdapter.ERROR || item == NVPagedAdapter.LIST_END)) && !TextUtils.isEmpty(this.keyword)) {
                return super.getCount();
            }
            return 0;
        }

        @Override // com.narvii.story.StoryListAdapter, com.narvii.list.NVPagedAdapter
        protected Class<? extends BlogListResponse> responseType() {
            return StorySearchListResponse.class;
        }

        @Override // com.narvii.story.StoryListAdapter
        protected void onFirstStoryPageBecomeVisible() {
            NVVideoListDelegate nVVideoListDelegate = (NVVideoListDelegate) ((NVListFragment) this.this$0).mVideoListDelegate;
            if (nVVideoListDelegate != null) {
                nVVideoListDelegate.reset();
                nVVideoListDelegate.listViewFirstBecomeVisible();
            }
        }

        @Override // com.narvii.story.StoryListAdapter
        protected void showStoryListFragment(View view, Blog blog) {
            if (blog != null) {
                new StoryHelper(this.context).openStoryDetailPageInAnotherActivity(view, new StoryListFragment.IntentBuilder(blog).initFeedCommunity(getCommunityInfo(blog.ndcId)).source(StoryApi.GLOBAL_SEARCH_PLAYER).searchKeyWord(this.keyword).forceVideoAutoPlay(true).initFeedUser(getUserInfo(blog.ndcId)).build());
            }
        }
    }

    /* compiled from: GlobalStorySearchListFragment.kt */
    private final class StoryStatusAdapter extends NVPagerStatusAdapter {
        final /* synthetic */ GlobalStorySearchListFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoryStatusAdapter(GlobalStorySearchListFragment globalStorySearchListFragment, NVContext ctx) {
            super(ctx);
            Intrinsics.checkParameterIsNotNull(ctx, "ctx");
            this.this$0 = globalStorySearchListFragment;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Object item = GlobalStorySearchListFragment.access$getFeedAdapter$p(this.this$0).getItem(0);
            if (Intrinsics.areEqual(item, NVPagedAdapter.ERROR)) {
                return -2;
            }
            return Intrinsics.areEqual(item, NVPagedAdapter.LIST_END) ? -1 : 0;
        }

        @Override // com.narvii.adapter.NVPagerStatusAdapter, android.widget.Adapter
        public int getCount() {
            int itemViewType = getItemViewType(0);
            return (itemViewType == -2 || itemViewType == -1) ? 1 : 0;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return new DiscoverVideoListDelegate(this, activity);
        }
        Intrinsics.throwNpe();
        throw null;
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }
}
