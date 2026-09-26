package com.narvii.chat.global;

import android.app.ActionBar;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.util.statusbar.StatusBarUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class GlobalCategoryChatListActivity extends FragmentWrapperActivity {
    @Override // com.narvii.app.NVActivity
    public boolean isActionBarOverlaying() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isGlobal() {
        return true;
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.app.NVActivity, com.narvii.logging.Page
    public boolean isValidPage() {
        return false;
    }

    @Override // com.narvii.app.FragmentWrapperActivity
    @NotNull
    protected Fragment createFragment() {
        return new GlobalCategoryChatListFragment();
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.NVActivity
    public void setStatusBar() {
        StatusBarUtils.setTranslucentStatusBar(this, 64);
    }

    @Override // com.narvii.app.FragmentWrapperActivity, com.narvii.app.DrawerActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ActionBar actionBar = getActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(1056964608));
        }
    }
}
