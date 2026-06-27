package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchUtils;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.SearchBar;

/* loaded from: classes3.dex */
public class SearchPostListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter mAdapter;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Posts";
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mAdapter = new Adapter();
        return this.mAdapter;
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (this.mAdapter == null || !TextUtils.isEmpty(str)) {
            return;
        }
        this.mAdapter.keyword = null;
        this.mAdapter.refresh(0, null);
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        Adapter adapter = this.mAdapter;
        if (adapter != null) {
            adapter.keyword = str;
            this.mAdapter.refresh(0, null);
        }
    }

    @Override // com.narvii.search.SwitchSearchListener
    public void onSwitchSearch(String str) {
        Adapter adapter = this.mAdapter;
        if (adapter == null || Utils.isStringEquals(str, adapter.keyword)) {
            return;
        }
        SearchUtils.logSwitchSearch(this, str);
        onSearch(null, str);
    }

    private class Adapter extends FeedListAdapter {
        private String keyword;

        public Adapter() {
            super(SearchPostListFragment.this);
            this.source = "Search Results";
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            this.keyword = bundle.getString("keyword");
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            bundleOnSaveInstanceState.putString("keyword", this.keyword);
            return bundleOnSaveInstanceState;
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return TextUtils.isEmpty(this.keyword) ? "LatestPosts" : "PostsSearchResult";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            if (TextUtils.isEmpty(this.keyword)) {
                return ApiRequest.builder().path("/feed/blog-all").build();
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("searchId", SearchUtils.getSearchId(SearchPostListFragment.this));
            builderPath.param("type", "keywords");
            builderPath.param("q", this.keyword);
            builderPath.timeout(20000);
            builderPath.retry(0);
            return builderPath.build();
        }
    }
}
