package com.narvii.chat.template;

import android.R;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.narvii.app.NVActivity;
import com.narvii.poweruser.strike.StrikeWarningFragment;

/* loaded from: classes2.dex */
public class SendStrikeActivity extends NVActivity {
    StrikeWarningFragment strikeWarningFragment;

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        Fragment fragmentFindFragmentByTag = getSupportFragmentManager().findFragmentByTag("template");
        if (!(fragmentFindFragmentByTag instanceof StrikeWarningFragment)) {
            this.strikeWarningFragment = new StrikeWarningFragment();
            getSupportFragmentManager().beginTransaction().add(R.id.content, this.strikeWarningFragment, "template").commit();
        } else {
            this.strikeWarningFragment = (StrikeWarningFragment) fragmentFindFragmentByTag;
        }
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        StrikeWarningFragment strikeWarningFragment = this.strikeWarningFragment;
        if (strikeWarningFragment == null || !strikeWarningFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }
}
