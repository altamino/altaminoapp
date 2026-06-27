package com.narvii.feed;

import android.os.Bundle;
import android.widget.ListAdapter;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.nvplayer.delegate.NVFeedListVideoDelegate;
import com.narvii.nvplayerview.delegate.IVideoListDelegate;

/* loaded from: classes2.dex */
public abstract class FeedListFragment extends NVListFragment {
    protected abstract FeedListAdapter createFeedAdapter(Bundle bundle);

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new MergeAdapter(this);
    }

    @Override // com.narvii.list.NVListFragment
    protected IVideoListDelegate initVideoListDelegate() {
        return new NVFeedListVideoDelegate(this, getActivity());
    }
}
