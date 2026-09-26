package com.narvii.members;

import com.narvii.app.NVFragment;
import com.narvii.search.SearchKeywordTabFragment;

/* JADX INFO: loaded from: classes5.dex */
public class MembersSearchFragment extends SearchKeywordTabFragment {
    @Override // com.narvii.search.SearchKeywordTabFragment, com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i10) {
        if (i10 == 2) {
            return super.getFragment(i10);
        }
        return null;
    }

    @Override // com.narvii.search.SearchKeywordTabFragment, com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i10) {
        if (i10 == 2) {
            return super.getTabLabel(i10);
        }
        return null;
    }
}
