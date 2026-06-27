package com.narvii.tipping;

import android.os.Bundle;
import com.narvii.amino.mastes.R;

/* loaded from: classes3.dex */
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

    @Override // com.narvii.tipping.TippingBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }
}
