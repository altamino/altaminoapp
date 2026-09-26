package com.narvii.search;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import com.narvii.amino.master.R;
import com.narvii.app.NVTabFragment;
import com.narvii.config.ConfigService;

/* JADX INFO: loaded from: classes7.dex */
public class SearchPagesFragment extends NVTabFragment {
    private boolean isGlobal;

    @Override // com.narvii.app.NVTabFragment
    protected Fragment createTabFragment(int i10) {
        if (i10 == 0) {
            return new SearchBlogListFragment();
        }
        if (i10 != 1 || this.isGlobal) {
            return null;
        }
        return new SearchItemGridFragment();
    }

    @Override // com.narvii.app.NVTabFragment
    protected CharSequence getTabLabel(int i10) {
        if (i10 == 0) {
            return getText(R.string.search_all);
        }
        if (i10 != 1 || this.isGlobal) {
            return null;
        }
        return getText(R.string.search_collections);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam("title");
        boolean z6 = false;
        if (TextUtils.isEmpty(stringParam)) {
            stringParam = getString(R.string.search_title_q, getStringParam("q"));
        }
        setTitle(stringParam);
        if (bundle == null) {
            setTabIndex(getIntParam("tab"));
        }
        if (((ConfigService) getService("config")).getCommunityId() == 0) {
            z6 = true;
        }
        this.isGlobal = z6;
    }
}
