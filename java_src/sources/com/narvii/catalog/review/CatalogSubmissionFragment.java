package com.narvii.catalog.review;

import android.os.Bundle;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.app.NVPagerTabFragment;
import com.narvii.drawer.DrawerHost;

/* JADX INFO: loaded from: classes8.dex */
public class CatalogSubmissionFragment extends NVPagerTabFragment implements FragmentWillFinishListener {
    @Override // com.narvii.app.NVPagerTabFragment
    public Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 0 || i10 == 1) {
            return CatalogSubmissionListFragment.class;
        }
        return null;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVPagerTabFragment
    protected Bundle getBundles(int i10) {
        if (i10 == 0) {
            Bundle bundle = new Bundle();
            bundle.putString("type", "pending");
            return bundle;
        }
        if (i10 != 1) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("type", "all");
        return bundle2;
    }

    @Override // com.narvii.app.NVPagerTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 0) {
            return getString(R.string.pending);
        }
        if (i10 != 1) {
            return null;
        }
        return getString(R.string.all);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        ((DrawerHost) getService("drawerHost")).refreshGeneralCount(0L);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(R.string.catalog_submissions);
    }
}
