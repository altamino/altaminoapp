package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.http.ApiRequest;

/* loaded from: classes3.dex */
public class SearchBlogListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    private class Adapter extends FeedListAdapter {
        public Adapter() {
            super(SearchBlogListFragment.this);
            this.source = "Search Results";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            String stringParam = SearchBlogListFragment.this.getStringParam("q");
            if (TextUtils.isEmpty(stringParam)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", "hashTags");
            builderPath.param("q", stringParam);
            builderPath.timeout(20000);
            builderPath.retry(0);
            return builderPath.build();
        }
    }
}
