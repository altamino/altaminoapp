package com.narvii.chat.template;

import android.R;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.narvii.app.NVActivity;
import com.narvii.poweruser.strike.StrikeWarningFragment;

/* JADX INFO: loaded from: classes11.dex */
public class SendStrikeActivity extends NVActivity {
    StrikeWarningFragment strikeWarningFragment;

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        StrikeWarningFragment strikeWarningFragment = this.strikeWarningFragment;
        if (strikeWarningFragment == null || !strikeWarningFragment.onBackPressed()) {
            super.onBackPressed();
        }
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Fragment fragmentM0 = getSupportFragmentManager().m0("template");
        if (!(fragmentM0 instanceof StrikeWarningFragment)) {
            this.strikeWarningFragment = new StrikeWarningFragment();
            getSupportFragmentManager().q().c(R.id.content, this.strikeWarningFragment, "template").j();
        } else {
            this.strikeWarningFragment = (StrikeWarningFragment) fragmentM0;
        }
    }
}
