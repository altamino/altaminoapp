package com.narvii.master.search;

import android.support.v4.app.Fragment;
import com.narvii.app.NVFragment;
import com.narvii.search.ISearchBarHost;

/* loaded from: classes3.dex */
public class SearchUtils {
    public static String getSearchId(Fragment fragment) {
        if (fragment != null && (fragment.getParentFragment() instanceof ISearchBarHost)) {
            return ((ISearchBarHost) fragment.getParentFragment()).getSearchId(fragment);
        }
        return null;
    }

    public static void logSwitchSearch(NVFragment nVFragment, String str) {
        if (nVFragment != null && (nVFragment.getParentFragment() instanceof ISearchBarHost)) {
            ((ISearchBarHost) nVFragment.getParentFragment()).onSwitchSearch(nVFragment, str);
        }
    }
}
