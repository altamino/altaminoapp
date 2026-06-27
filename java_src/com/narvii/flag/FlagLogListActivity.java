package com.narvii.flag;

import android.support.v4.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;

/* loaded from: classes2.dex */
public class FlagLogListActivity extends FragmentWrapperActivity {
    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity
    protected Fragment createFragment() {
        return new FlagLogListFragment();
    }
}
