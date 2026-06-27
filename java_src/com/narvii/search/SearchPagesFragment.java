package com.narvii.search;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVTabFragment;
import com.narvii.config.ConfigService;

/* loaded from: classes3.dex */
public class SearchPagesFragment extends NVTabFragment {
    private boolean isGlobal;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) throws IllegalAccessException, IllegalArgumentException {
        super.onCreate(bundle);
        String stringParam = getStringParam("title");
        if (TextUtils.isEmpty(stringParam)) {
            stringParam = getString(R.string.search_title_q, getStringParam("q"));
        }
        setTitle(stringParam);
        if (bundle == null) {
            setTabIndex(getIntParam("tab"));
        }
        this.isGlobal = ((ConfigService) getService("config")).getCommunityId() == 0;
    }

    @Override // com.narvii.app.NVTabFragment
    protected CharSequence getTabLabel(int i) {
        if (i == 0) {
            return getText(R.string.search_all);
        }
        if (i != 1 || this.isGlobal) {
            return null;
        }
        return getText(R.string.search_collections);
    }

    @Override // com.narvii.app.NVTabFragment
    protected Fragment createTabFragment(int i) {
        if (i == 0) {
            return new SearchBlogListFragment();
        }
        if (i != 1 || this.isGlobal) {
            return null;
        }
        return new SearchItemGridFragment();
    }
}
