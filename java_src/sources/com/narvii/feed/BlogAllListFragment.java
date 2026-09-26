package com.narvii.feed;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.model.api.BlogListResponse;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.wallet.optinads.OptinAdsUtil;

/* JADX INFO: loaded from: classes6.dex */
public class BlogAllListFragment extends NVListFragment {
    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "latest_feed";
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    private static class Adapter extends FeedListAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<BlogListResponse> responseType() {
            return BlogListResponse.class;
        }

        public Adapter(NVContext nVContext) {
            super(nVContext);
            this.source = "Latest Feed";
            this.paginationType = 1;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return ApiRequest.builder().path("/feed/blog-all").build();
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter(this);
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        mergeAdapter.addAdapter(OptinAdsUtil.setupAdapter(this, adapter, getString(R.string.mopub_unitid_mrec_feed), true), true);
        return mergeAdapter;
    }

    @Override // com.narvii.app.NVFragment
    public int getPostEntryLift() {
        return OptinAdsUtil.getBannerLift(this, 16);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (isRootFragment()) {
            setTitle(R.string.main_entries_latest);
        }
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Latest Feed Page Opened").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Latest Feed Page Opened Total");
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        setEmptyView(R.layout.front_feed_empty_view);
    }
}
