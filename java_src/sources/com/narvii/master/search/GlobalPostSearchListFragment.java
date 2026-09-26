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
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.language.ContentLanguageService;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.LogEvent;
import com.narvii.logging.ObjectInfo;
import com.narvii.master.HeadlineDividerAdapter;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.nvplayerview.delegate.NVVideoListDelegate;
import com.narvii.search.SwitchSearchListener;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.TmpValue;
import com.narvii.widget.SearchBar;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public class GlobalPostSearchListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, FilterGlobalPostDialog.OnSearchConfigChangListener, ChangeSearchTextRegister {
    final TmpValue<String> SEARCH_SOURCE = new TmpValue<>();
    AminoIdMatchedAdapter aminoIdMatchedAdapter;
    ChangeSearchTextListener changeSearchTextListener;
    FeedAdapter feedAdapter;
    ContentLanguageService languageService;
    GlobalPostSearchPrefsHelper prefsHelper;
    SearchHistoryDelegate searchHistoryDelegate;

    private class FeedAdapter extends GlobalPostSearchAdapter {
        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "PostsSearchResult";
        }

        @Override // com.narvii.list.NVPagedAdapter
        public boolean showListEnd(int i10) {
            return i10 == 0;
        }

        public FeedAdapter(NVContext nVContext) {
            super(nVContext);
            this.source = "Global Search";
            this.loggingOrigin = LoggingOrigin.GlobalSearch;
        }

        @Override // com.narvii.headlines.feed.HeadLinesListAdapter
        protected void completeLogBuilder(@NotNull LogEvent.Builder builder, ObjectInfo objectInfo) {
            builder.extraParam("searchQuery", this.keyword);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (TextUtils.isEmpty(this.keyword)) {
                return null;
            }
            ApiRequest.Builder builder = ApiRequest.builder();
            builder.global().path("post/search");
            builder.param("v", "2.0.0");
            builder.param("q", this.keyword);
            builder.param("my", Boolean.valueOf(GlobalPostSearchListFragment.this.prefsHelper.filterByMyAmino()));
            builder.param("orderBy", GlobalPostSearchListFragment.this.prefsHelper.sortBy());
            builder.param("searchId", SearchUtils.getSearchId(GlobalPostSearchListFragment.this));
            builder.param("language", GlobalPostSearchListFragment.this.languageService.getRequestPrefLanguageWithLocalAsDefault());
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

        @Override // com.narvii.list.NVPagedAdapter
        public View createListEndItem(ViewGroup viewGroup, View view, int i10) {
            return createView(R.layout.global_post_search_result_empty_view, viewGroup, view);
        }
    }

    private class SearchResultHeaderAdapter extends AdriftAdapter {
        public SearchResultHeaderAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            FeedAdapter feedAdapter = GlobalPostSearchListFragment.this.feedAdapter;
            if (feedAdapter == null || TextUtils.isEmpty(feedAdapter.keyword)) {
                return 0;
            }
            return super.getCount();
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (view2 == null || view2.getId() != R.id.filter) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            LogEvent.clickWildcardBuilder(this, "Filter").send();
            new FilterGlobalPostDialog(getContext(), true, GlobalPostSearchListFragment.this, 0).show();
            return true;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            TextView textView;
            View viewCreateView = createView(R.layout.search_result_section_header, viewGroup, view);
            viewCreateView.findViewById(R.id.filter).setOnClickListener(this.subviewClickListener);
            if (GlobalPostSearchListFragment.this.getBooleanParam("hide_match_id_adapter", false) && (textView = (TextView) viewCreateView.findViewById(R.id.pre_key)) != null) {
                textView.setText(R.string.user_switch_posts);
            }
            return viewCreateView;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "posts_list";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(String str) {
        ChangeSearchTextListener changeSearchTextListener = this.changeSearchTextListener;
        if (changeSearchTextListener != null) {
            changeSearchTextListener.changeSearchText(str, true);
        }
        this.SEARCH_SOURCE.set("Recent Searches");
        onSearch(null, str);
    }

    private void notifyDataSetChanged() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.notifyDataSetChanged();
        }
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
        ((StatisticsService) getService("statistics")).event("Search For Content (Global)").userPropInc("Search For Content (Global) Total").source(this.SEARCH_SOURCE.getAndRemove());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSearchHistory() {
        FeedAdapter feedAdapter = this.feedAdapter;
        return feedAdapter == null || TextUtils.isEmpty(feedAdapter.keyword);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
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
        FeedAdapter feedAdapter = new FeedAdapter(this);
        this.feedAdapter = feedAdapter;
        feedAdapter.keyword = getStringParam("search_key");
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
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVVideoListDelegate(this, getActivity());
    }

    @Override // com.narvii.master.search.FilterGlobalPostDialog.OnSearchConfigChangListener
    public void onConfigChanged() {
        FeedAdapter feedAdapter = this.feedAdapter;
        if (feedAdapter != null) {
            feedAdapter.resetList();
        }
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

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        this.prefsHelper = new GlobalPostSearchPrefsHelper(getContext());
        this.languageService = (ContentLanguageService) getService("content_language");
        SearchHistoryDelegate searchHistoryDelegate = new SearchHistoryDelegate(this, SearchPrefsHelper.PREFS_KEY_POST);
        this.searchHistoryDelegate = searchHistoryDelegate;
        searchHistoryDelegate.setOnSearchHistory(Utils.functionUnit(new Callback() { // from class: com.narvii.master.search.d
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2406a.lambda$onCreate$0((String) obj);
            }
        }));
        this.searchHistoryDelegate.setShowSearchHistory(new e8.a() { // from class: com.narvii.master.search.e
            @Override // e8.a
            public final Object invoke() {
                return Boolean.valueOf(this.f2407a.showSearchHistory());
            }
        });
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_global_post_search, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
        listView.setDividerHeight(0);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        onSearchText(str);
        this.searchHistoryDelegate.addSearchHistory(str);
    }
}
