package com.narvii.catalog.review;

import android.os.Bundle;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVPagerTabFragment;
import com.narvii.drawer.DrawerHost;
import com.narvii.model.ExternalSource;

/* loaded from: classes2.dex */
public class CatalogSubmissionFragment extends NVPagerTabFragment implements FragmentWillFinishListener {
    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.catalog_submissions);
    }

    @Override // com.narvii.app.NVPagerTabFragment
    protected String getTabLabel(int i) {
        if (i == 0) {
            return getString(R.string.pending);
        }
        if (i != 1) {
            return null;
        }
        return getString(R.string.all);
    }

    @Override // com.narvii.app.NVPagerTabFragment
    public Class<? extends NVFragment> getFragment(int i) {
        if (i == 0 || i == 1) {
            return CatalogSubmissionListFragment.class;
        }
        return null;
    }

    @Override // com.narvii.app.NVPagerTabFragment
    protected Bundle getBundles(int i) {
        if (i == 0) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "pending");
            return bundle;
        }
        if (i != 1) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("type", ExternalSource.EXTERNAL_SOURCE_ALL_ID);
        return bundle2;
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        ((DrawerHost) getService("drawerHost")).refreshGeneralCount(0L);
    }
}
