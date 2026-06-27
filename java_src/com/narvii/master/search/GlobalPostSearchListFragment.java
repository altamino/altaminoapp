package com.narvii.master.search;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.master.search.FilterGlobalPostDialog;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.search.SwitchSearchListener;
import com.narvii.story.StoryApi;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.SearchBar;
import kotlin.jvm.functions.Function0;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
public class GlobalPostSearchListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, FilterGlobalPostDialog.OnSearchConfigChangListener, ChangeSearchTextRegister {
    final TmpValue<String> SEARCH_SOURCE = new TmpValue<>();
    AminoIdMatchedAdapter aminoIdMatchedAdapter;
    ChangeSearchTextListener changeSearchTextListener;
    FeedAdapter feedAdapter;
    ContentLanguageService languageService;
    GlobalPostSearchPrefsHelper prefsHelper;
    SearchHistoryDelegate searchHistoryDelegate;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Posts";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        this.prefsHelper = new GlobalPostSearchPrefsHelper(getContext());
        this.languageService = (ContentLanguageService) getService("content_language");
        this.searchHistoryDelegate = new SearchHistoryDelegate(this, SearchPrefsHelper.PREFS_KEY_POST);
        this.searchHistoryDelegate.setOnSearchHistory(Utils.functionUnit(new Callback() { // from class: com.narvii.master.search.-$$Lambda$GlobalPostSearchListFragment$OX9YMaa8UakV5rXgakxi2Hhofng
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$onCreate$0$GlobalPostSearchListFragment((String) obj);
            }
        }));
        this.searchHistoryDelegate.setShowSearchHistory(new Function0() { // from class: com.narvii.master.search.-$$Lambda$GlobalPostSearchListFragment$Ik6dFhviGAtY7m6PQe6Sc4jKMt4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(this.f$0.showSearchHistory());
            }
        });
    }

    public /* synthetic */ void lambda$onCreate$0$GlobalPostSearchListFragment(String str) {
        ChangeSearchTextListener changeSearchTextListener = this.changeSearchTextListener;
        if (changeSearchTextListener != null) {
            changeSearchTextListener.changeSearchText(str, true);
        }
        this.SEARCH_SOURCE.set("Recent Searches");
        onSearch(null, str);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_global_post_search, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this) { // from class: com.narvii.master.search.GlobalPostSearchListFragment.1
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
                FeedAdapter feedAdapter = GlobalPostSearchListFragment.this.feedAdapter;
                if (feedAdapter != null && TextUtils.isEmpty(feedAdapter.keyword)) {
                    return true;
                }
                FeedAdapter feedAdapter2 = GlobalPostSearchListFragment.this.feedAdapter;
                return !(feedAdapter2 == null || TextUtils.isEmpty(feedAdapter2.keyword) || GlobalPostSearchListFragment.this.feedAdapter.errorMessage() == null) || super.isListShown() || GlobalPostSearchListFragment.this.aminoIdMatchedAdapter.isListShown();
            }
        };
        this.searchHistoryDelegate.addSearchHistoryAdapters(mergeAdapter);
        this.feedAdapter = new FeedAdapter(this);
        this.feedAdapter.keyword = getStringParam("search_key");
        HeadlineDividerAdapter headlineDividerAdapter = new HeadlineDividerAdapter(this);
        headlineDividerAdapter.setAdapter(this.feedAdapter);
        if (!getBooleanParam("hide_match_id_adapter", false)) {
            mergeAdapter.addAdapter(this.aminoIdMatchedAdapter);
        }
        mergeAdapter.addAdapter(new SearchResultHeaderAdapter(this));
        mergeAdapter.addAdapter(headlineDividerAdapter, true);
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter == null || Utils.isStringEquals(str, feedAdapter.keyword)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            onTextChanged(null, null);
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        onSearchText(str);
        if (str.isEmpty() || StringUtils.isTrimEmpty(str)) {
            return;
        }
        this.searchHistoryDelegate.addSearchHistory(str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (this.feedAdapter != null && TextUtils.isEmpty(str)) {
            FeedAdapter feedAdapter = this.feedAdapter;
            feedAdapter.keyword = null;
            feedAdapter.resetList();
            this.aminoIdMatchedAdapter.notifyKeyChange(null);
        }
        notifyDataSetChanged();
    }

    private void notifyDataSetChanged() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        onSearchText(str);
        this.searchHistoryDelegate.addSearchHistory(str);
    }

    private void onSearchText(String str) {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.keyword = str;
            feedAdapter.resetList();
        }
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            aminoIdMatchedAdapter.notifyKeyChange(str);
        }
        notifyDataSetChanged();
    }

    @Override // com.narvii.master.search.FilterGlobalPostDialog.OnSearchConfigChangListener
    public void onConfigChanged() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.resetList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSearchHistory() {
        FeedAdapter feedAdapter = this.feedAdapter;
        return feedAdapter == null || TextUtils.isEmpty(feedAdapter.keyword);
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    private class SearchResultHeaderAdapter extends AdriftAdapter {
        public SearchResultHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            TextView textView;
            View viewCreateView = createView(R.layout.search_result_section_header, viewGroup, view);
            viewCreateView.findViewById(R.id.filter).setOnClickListener(this.subviewClickListener);
            if (GlobalPostSearchListFragment.this.getBooleanParam("hide_match_id_adapter", false) && (textView = (TextView) viewCreateView.findViewById(R.id.pre_key)) != null) {
                textView.setText(R.string.user_switch_posts);
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (view2 != null && view2.getId() == R.id.filter) {
                LogEvent.clickWildcardBuilder(this, "Filter").send();
                new FilterGlobalPostDialog(getContext(), true, GlobalPostSearchListFragment.this, 0).show();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            FeedAdapter feedAdapter = GlobalPostSearchListFragment.this.feedAdapter;
            if (feedAdapter == null || TextUtils.isEmpty(feedAdapter.keyword)) {
                return 0;
            }
            return super.getCount();
        }
    }

    private class FeedAdapter extends GlobalPostSearchAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "PostsSearchResult";
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i) {
            return i == 0;
        }

        public FeedAdapter(NVContext nVContext) {
            super(nVContext);
            this.source = "Global Search";
            this.loggingOrigin = LoggingOrigin.GlobalSearch;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected void completeLogBuilder(LogEvent.Builder builder, ObjectInfo objectInfo) {
            builder.extraParam("searchQuery", this.keyword);
        }

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i) {
            return createView(R.layout.global_post_search_result_empty_view, viewGroup, view);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(this.keyword)) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("post/search");
            builder.param("v", StoryApi.STORY_VERSION);
            builder.param("q", this.keyword);
            builder.param("my", Boolean.valueOf(GlobalPostSearchListFragment.this.prefsHelper.filterByMyAmino()));
            builder.param("orderBy", GlobalPostSearchListFragment.this.prefsHelper.sortBy());
            builder.param("searchId", SearchUtils.getSearchId(GlobalPostSearchListFragment.this));
            builder.param(IjkMediaMeta.IJKM_KEY_LANGUAGE, GlobalPostSearchListFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault());
            builder.param("excludedPostTypes", 9);
            return builder.build();
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected IVideoListDelegate getVideoListDelegate() {
            return ((NVListFragment) GlobalPostSearchListFragment.this).mVideoListDelegate;
        }

        @Override // com.narvii.master.search.GlobalPostSearchAdapter
        protected boolean videoAutoPlay() {
            return ((NVListFragment) GlobalPostSearchListFragment.this).videoAutoPlay;
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }
}
