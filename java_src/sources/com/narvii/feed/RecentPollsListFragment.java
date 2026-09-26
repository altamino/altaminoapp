package com.narvii.feed;

import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.list.NVListFragment;
import com.narvii.model.Feed;
import com.narvii.model.api.BlogListResponse;
import com.narvii.model.api.ListResponse;
import com.narvii.util.http.ApiRequest;

/* JADX INFO: loaded from: classes5.dex */
public class RecentPollsListFragment extends NVListFragment {

    private class Adapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends ListResponse<? extends Feed>> responseType() {
            return BlogListResponse.class;
        }

        public Adapter() {
            super(RecentPollsListFragment.this);
            this.source = "Poll Feed List";
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/blog?type=polls-recent").build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new Adapter();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        if (isRootFragment()) {
            if (!TextUtils.isEmpty(getStringParam("title"))) {
                setTitle(getStringParam("title"));
            } else {
                setTitle(R.string.main_entries_recent_polls);
            }
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.front_feed_empty_view);
    }
}
