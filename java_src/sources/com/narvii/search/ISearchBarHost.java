package com.narvii.search;

import androidx.fragment.app.Fragment;
import com.narvii.app.NVFragment;

/* JADX INFO: loaded from: classes9.dex */
public interface ISearchBarHost {
    String getSearchId(Fragment fragment);

    void onChildFragmentRealtimeSearch(NVFragment nVFragment, String str);

    void onSearchFromHistory(NVFragment nVFragment, String str);

    void onSwitchSearch(NVFragment nVFragment, String str);
}
