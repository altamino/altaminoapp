package com.narvii.flag.resolve;

import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;

/* JADX INFO: loaded from: classes7.dex */
public class FlagResolveActivity extends FragmentWrapperActivity {
    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity
    protected Fragment createFragment() {
        return new FlagResolveFragment();
    }
}
