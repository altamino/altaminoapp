package com.narvii.master.search;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.NVListFragment;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.master.search.history.SearchHistoryDelegate;
import com.narvii.master.search.trending.SectionHeaderAdapter;
import com.narvii.model.story.StoryTopic;
import com.narvii.search.ISearchBarHost;
import com.narvii.search.SwitchSearchListener;
import com.narvii.topic.adapter.TopicListAdapter;
import com.narvii.util.Callback;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes4.dex */
public class GlobalTopicSearchFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener, ChangeSearchTextRegister {
    Adapter adapter;
    AminoIdMatchedAdapter aminoIdMatchedAdapter;
    private ChangeSearchTextListener changeSearchTextListener;
    private String curKey;
    Runnable hotSearchRunnable = new Runnable() { // from class: com.narvii.master.search.GlobalTopicSearchFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (GlobalTopicSearchFragment.this.showSearchHistory()) {
                return;
            }
            GlobalTopicSearchFragment globalTopicSearchFragment = GlobalTopicSearchFragment.this;
            Adapter adapter = globalTopicSearchFragment.adapter;
            if (Utils.isEquals(adapter == null ? null : adapter.keyword, globalTopicSearchFragment.curKey)) {
                return;
            }
            GlobalTopicSearchFragment globalTopicSearchFragment2 = GlobalTopicSearchFragment.this;
            if (globalTopicSearchFragment2.adapter != null) {
                if (globalTopicSearchFragment2.getParentFragment() instanceof ISearchBarHost) {
                    ISearchBarHost iSearchBarHost = (ISearchBarHost) GlobalTopicSearchFragment.this.getParentFragment();
                    GlobalTopicSearchFragment globalTopicSearchFragment3 = GlobalTopicSearchFragment.this;
                    iSearchBarHost.onChildFragmentRealtimeSearch(globalTopicSearchFragment3, globalTopicSearchFragment3.curKey);
                }
                GlobalTopicSearchFragment globalTopicSearchFragment4 = GlobalTopicSearchFragment.this;
                globalTopicSearchFragment4.adapter.keyword = globalTopicSearchFragment4.curKey;
                GlobalTopicSearchFragment.this.adapter.resetList();
            }
            GlobalTopicSearchFragment globalTopicSearchFragment5 = GlobalTopicSearchFragment.this;
            AminoIdMatchedAdapter aminoIdMatchedAdapter = globalTopicSearchFragment5.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter != null) {
                aminoIdMatchedAdapter.notifyKeyChange(globalTopicSearchFragment5.curKey);
            }
        }
    };
    private SearchHistoryDelegate searchHistoryDelegate;

    class Adapter extends TopicListAdapter {
        String keyword;

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopicsSearchResult";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int pageSize() {
            return 100;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.keyword = GlobalTopicSearchFragment.this.getStringParam("search_key");
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return new ApiRequest.Builder().path("topic/search").param("q", this.keyword).param("searchId", this.keyword != null ? SearchUtils.getSearchId(GlobalTopicSearchFragment.this) : null).param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            if (super.isEmpty() && !TextUtils.isEmpty(this.keyword)) {
                return true;
            }
            return false;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(StoryTopic.class));
        }
    }

    private class TrendingAdapter extends Adapter {
        @Override // com.narvii.master.search.GlobalTopicSearchFragment.Adapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "Trending";
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter
        public boolean showBookmark() {
            return false;
        }

        public TrendingAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // com.narvii.master.search.GlobalTopicSearchFragment.Adapter, com.narvii.topic.adapter.TopicListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return new ApiRequest.Builder().path("/topic/trending").param("language", getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (GlobalTopicSearchFragment.this.showSearchHistory()) {
                return super.getCount();
            }
            return 0;
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "topics";
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
        onSearch(null, str);
    }

    private void searchText(String str) {
        if (Utils.isEquals(str, this.adapter.keyword)) {
            return;
        }
        Adapter adapter = this.adapter;
        String str2 = str == null ? "" : str;
        adapter.keyword = str2;
        this.curKey = str2;
        adapter.resetList();
        this.aminoIdMatchedAdapter.notifyKeyChange(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curKey);
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
        GlobalSearchMergeAdapter globalSearchMergeAdapter = new GlobalSearchMergeAdapter(this);
        this.aminoIdMatchedAdapter = new AminoIdMatchedAdapter(this);
        if (!getBooleanParam("hide_match_id_adapter", false)) {
            globalSearchMergeAdapter.addAdapter(this.aminoIdMatchedAdapter);
        }
        this.adapter = new Adapter(this);
        this.searchHistoryDelegate.addSearchHistoryAdapters(globalSearchMergeAdapter);
        SectionHeaderAdapter sectionHeaderAdapter = new SectionHeaderAdapter(this, R.string.trending);
        TrendingAdapter trendingAdapter = new TrendingAdapter(this);
        sectionHeaderAdapter.setAttachHost(trendingAdapter);
        if (!getBooleanParam("hide_match_id_adapter", false)) {
            globalSearchMergeAdapter.addAdapter(sectionHeaderAdapter);
            globalSearchMergeAdapter.addAdapter(trendingAdapter);
        }
        SectionHeaderAdapter sectionHeaderAdapter2 = new SectionHeaderAdapter(this, getBooleanParam("hide_match_id_adapter", false) ? R.string.topic_s : R.string.community_search_keywords);
        sectionHeaderAdapter2.setAttachHost(this.adapter);
        globalSearchMergeAdapter.addAdapter(sectionHeaderAdapter2);
        globalSearchMergeAdapter.addAdapter(this.adapter, true);
        return globalSearchMergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    public Drawable getListSelector() {
        return new ColorDrawable(0);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        Utils.handler.removeCallbacks(this.hotSearchRunnable);
        searchText(str);
        if (StringUtils.isTrimEmpty(str)) {
            return;
        }
        this.searchHistoryDelegate.addSearchHistory(str);
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        if (Utils.isStringEquals(str, this.adapter.keyword)) {
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        if (str == null || str.isEmpty()) {
            onTextChanged(null, null);
        }
        onSearch(null, str);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        this.curKey = str;
        if (this.adapter != null && TextUtils.isEmpty(str)) {
            Adapter adapter = this.adapter;
            adapter.keyword = "";
            adapter.resetEmptyList();
        }
        AminoIdMatchedAdapter aminoIdMatchedAdapter = this.aminoIdMatchedAdapter;
        if (aminoIdMatchedAdapter != null) {
            aminoIdMatchedAdapter.notifyKeyChange(this.curKey);
        }
        Utils.handler.removeCallbacks(this.hotSearchRunnable);
        Utils.postDelayed(this.hotSearchRunnable, 1000L);
    }

    @Override // com.narvii.list.NVListFragment
    protected String emptyMessage() {
        return getString(R.string.normal_empty_list);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        SearchHistoryDelegate searchHistoryDelegate = new SearchHistoryDelegate(this, "topic");
        this.searchHistoryDelegate = searchHistoryDelegate;
        searchHistoryDelegate.setOnSearchHistory(Utils.functionUnit(new Callback() { // from class: com.narvii.master.search.n
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2422a.lambda$onCreate$0((String) obj);
            }
        }));
        this.searchHistoryDelegate.setShowSearchHistory(new e8.a() { // from class: com.narvii.master.search.o
            @Override // e8.a
            public final Object invoke() {
                return Boolean.valueOf(this.f2423a.showSearchHistory());
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
    }
}
