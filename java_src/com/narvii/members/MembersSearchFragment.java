package com.narvii.members;

import com.narvii.app.NVFragment;
import com.narvii.search.SearchKeywordTabFragment;

/* loaded from: classes3.dex */
public class MembersSearchFragment extends SearchKeywordTabFragment {
    @Override // com.narvii.search.SearchKeywordTabFragment, com.narvii.app.NVScrollableTabFragment
    protected String getTabLabel(int i) {
        if (i == 2) {
            return super.getTabLabel(i);
        }
        return null;
    }

    @Override // com.narvii.search.SearchKeywordTabFragment, com.narvii.app.NVScrollableTabFragment
    protected Class<? extends NVFragment> getFragment(int i) {
        if (i == 2) {
            return super.getFragment(i);
        }
        return null;
    }
}
