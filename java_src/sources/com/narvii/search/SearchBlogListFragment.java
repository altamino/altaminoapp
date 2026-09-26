package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.narvii.feed.FeedListAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.BlogListResponse;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes6.dex */
public class SearchBlogListFragment extends NVListFragment {

    private class Adapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter() {
            super(SearchBlogListFragment.this);
            this.source = "Search Results";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            String stringParam = SearchBlogListFragment.this.getStringParam("q");
            if (TextUtils.isEmpty(stringParam)) {
                resetEmptyList();
                return null;
            }
            ApiRequest.Builder builderPath = ApiRequest.builder().path("/blog");
            builderPath.param("type", "hashTags");
            builderPath.param("q", stringParam);
            builderPath.timeout(AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
            builderPath.retry(0);
            return builderPath.build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }
}
