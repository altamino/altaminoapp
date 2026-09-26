package com.narvii.tipping;

import android.os.Bundle;
import com.narvii.amino.master.R;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes11.dex */
public class TippingViewerListFragment extends TippingBaseFragment {
    @Override // com.narvii.tipping.TippingBaseFragment
    protected boolean isAuthor() {
        return false;
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.tipping.TippingBaseFragment
    protected int titleId() {
        return R.string.tippers;
    }

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ((StatisticsService) getService("statistics")).event("Prop Givers").source(getStringParam(ExternalPostPreviewFragment.SOURCE)).userPropInc("Prop Givers Total");
        }
    }
}
