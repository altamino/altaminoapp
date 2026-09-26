package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.master.search.SearchUtils;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.SearchBar;

/* JADX INFO: loaded from: classes2.dex */
public class SearchPostListFragment extends NVListFragment implements SearchBar.OnSearchListener, SwitchSearchListener {
    Adapter mAdapter;

    private class Adapter extends FeedListAdapter {
        private String keyword;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter() {
            super(SearchPostListFragment.this);
            this.source = "Search Results";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            if (TextUtils.isEmpty(this.keyword)) {
                return ApiRequest.builder().path("/feed/blog-all").build();
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("searchId", SearchUtils.getSearchId(SearchPostListFragment.this));
            builderPath.param("type", "keywords");
            builderPath.param("q", this.keyword);
            builderPath.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            builderPath.retry(0);
            return builderPath.build();
        }

        @Override // com.narvii.feed.BaseFeedListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return TextUtils.isEmpty(this.keyword) ? "LatestPosts" : "PostsSearchResult";
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
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "posts_list";
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.mAdapter = adapter;
        return adapter;
    }

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onSearch(SearchBar searchBar, String str) {
        Adapter adapter = this.mAdapter;
        if (adapter != null) {
            adapter.keyword = str;
            this.mAdapter.refresh(0, null);
            ((StatisticsService) getService("statistics")).event("Search for content").userPropInc("Search Total").param(EventConstants.CommentPost.TYPE, "Post");
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

    @Override // com.narvii.widget.SearchBar.OnSearchListener
    public void onTextChanged(SearchBar searchBar, String str) {
        if (this.mAdapter == null || !TextUtils.isEmpty(str)) {
            return;
        }
        this.mAdapter.keyword = null;
        this.mAdapter.refresh(0, null);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setScrollToHideKeyboard(true);
    }
}
