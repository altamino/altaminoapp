package com.narvii.search;

import android.support.v4.app.Fragment;
import com.narvii.app.NVFragment;

/* loaded from: classes3.dex */
public interface ISearchBarHost {
    String getSearchId(Fragment fragment);

    void onChildFragmentRealtimeSearch(NVFragment nVFragment, String str);

    void onSearchFromHistory(NVFragment nVFragment, String str);

    void onSwitchSearch(NVFragment nVFragment, String str);
}
