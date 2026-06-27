package com.narvii.master.search;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.mastes.R;
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
import kotlin.jvm.functions.Function0;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes3.dex */
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
            Adapter adapter = GlobalTopicSearchFragment.this.adapter;
            if (Utils.isEquals(adapter == null ? null : adapter.keyword, GlobalTopicSearchFragment.this.curKey)) {
                return;
            }
            GlobalTopicSearchFragment globalTopicSearchFragment = GlobalTopicSearchFragment.this;
            if (globalTopicSearchFragment.adapter != null) {
                if (globalTopicSearchFragment.getParentFragment() instanceof ISearchBarHost) {
                    ISearchBarHost iSearchBarHost = (ISearchBarHost) GlobalTopicSearchFragment.this.getParentFragment();
                    GlobalTopicSearchFragment globalTopicSearchFragment2 = GlobalTopicSearchFragment.this;
                    iSearchBarHost.onChildFragmentRealtimeSearch(globalTopicSearchFragment2, globalTopicSearchFragment2.curKey);
                }
                GlobalTopicSearchFragment globalTopicSearchFragment3 = GlobalTopicSearchFragment.this;
                globalTopicSearchFragment3.adapter.keyword = globalTopicSearchFragment3.curKey;
                GlobalTopicSearchFragment.this.adapter.resetList();
            }
            GlobalTopicSearchFragment globalTopicSearchFragment4 = GlobalTopicSearchFragment.this;
            AminoIdMatchedAdapter aminoIdMatchedAdapter = globalTopicSearchFragment4.aminoIdMatchedAdapter;
            if (aminoIdMatchedAdapter != null) {
                aminoIdMatchedAdapter.notifyKeyChange(globalTopicSearchFragment4.curKey);
            }
        }
    };
    private SearchHistoryDelegate searchHistoryDelegate;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Topics";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isDarkTheme() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
        this.searchHistoryDelegate = new SearchHistoryDelegate(this, "topic");
        this.searchHistoryDelegate.setOnSearchHistory(Utils.functionUnit(new Callback() { // from class: com.narvii.master.search.-$$Lambda$GlobalTopicSearchFragment$iExIbGI-HxnmSwmSsx6XEnJ3dOE
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f$0.lambda$onCreate$0$GlobalTopicSearchFragment((String) obj);
            }
        }));
        this.searchHistoryDelegate.setShowSearchHistory(new Function0() { // from class: com.narvii.master.search.-$$Lambda$GlobalTopicSearchFragment$rap4apnYA9GQu-WrzmQvyA00L2c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(this.f$0.showSearchHistory());
            }
        });
    }

    public /* synthetic */ void lambda$onCreate$0$GlobalTopicSearchFragment(String str) {
        ChangeSearchTextListener changeSearchTextListener = this.changeSearchTextListener;
        if (changeSearchTextListener != null) {
            changeSearchTextListener.changeSearchText(str, true);
        }
        onSearch(null, str);
    }

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
    protected String emptyMessage() {
        return getString(R.string.normal_empty_list);
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setDivider(null);
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

    private void searchText(String str) {
        if (Utils.isEquals(str, this.adapter.keyword)) {
            return;
        }
        this.adapter.keyword = str == null ? "" : str;
        Adapter adapter = this.adapter;
        this.curKey = adapter.keyword;
        adapter.resetList();
        this.aminoIdMatchedAdapter.notifyKeyChange(str);
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

    /* JADX INFO: Access modifiers changed from: private */
    public boolean showSearchHistory() {
        return TextUtils.isEmpty(this.curKey);
    }

    @Override // com.narvii.master.search.ChangeSearchTextRegister
    public void setChangeSearchTextListener(ChangeSearchTextListener changeSearchTextListener) {
        this.changeSearchTextListener = changeSearchTextListener;
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
        protected ApiRequest createRequest(boolean z) {
            return new ApiRequest.Builder().path("/topic/trending").param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.Adapter
        public int getCount() {
            if (GlobalTopicSearchFragment.this.showSearchHistory()) {
                return super.getCount();
            }
            return 0;
        }
    }

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

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
            addImpressionCollector(new LinearImpressionCollector(StoryTopic.class));
        }

        @Override // com.narvii.topic.adapter.TopicListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return new ApiRequest.Builder().path("topic/search").param("q", this.keyword).param("searchId", this.keyword != null ? SearchUtils.getSearchId(GlobalTopicSearchFragment.this) : null).param(IjkMediaMeta.IJKM_KEY_LANGUAGE, getLanguageService().getRequestPrefLanguageWithLocalAsDefault()).build();
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            return super.isEmpty() && !TextUtils.isEmpty(this.keyword);
        }
    }
}
