package com.narvii.feed;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.amino.master.R;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;
import com.narvii.wallet.optinads.OptinAdsUtil;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FeedListFragment extends NVListFragment {
    protected abstract FeedListAdapter createFeedAdapter(Bundle bundle);

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    protected boolean optinAds() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        FeedListAdapter feedListAdapterCreateFeedAdapter = createFeedAdapter(bundle);
        if (optinAds()) {
            mergeAdapter.addAdapter(OptinAdsUtil.setupAdapter(this, feedListAdapterCreateFeedAdapter, getString(R.string.mopub_unitid_mrec_feed), true));
        } else {
            mergeAdapter.addAdapter(feedListAdapterCreateFeedAdapter);
        }
        return mergeAdapter;
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }
}
