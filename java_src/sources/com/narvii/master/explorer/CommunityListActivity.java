package com.narvii.master.explorer;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.util.statusbar.StatusBarUtils;

/* JADX INFO: loaded from: classes6.dex */
public class CommunityListActivity extends FragmentWrapperActivity {
    @Override // com.narvii.app.NVActivity
    public boolean isActionBarOverlaying() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity
    protected Fragment createFragment() {
        return new CommunityListFragment();
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public void setStatusBar() {
        StatusBarUtils.setTranslucentStatusBar(this, 64);
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getActionBar() != null) {
            getActionBar().setBackgroundDrawable(new ColorDrawable(1056964608));
        }
    }
}
