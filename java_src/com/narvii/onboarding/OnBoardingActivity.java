package com.narvii.onboarding;

import android.R;
import android.os.Bundle;
import com.narvii.app.NVActivity;

/* loaded from: classes3.dex */
public class OnBoardingActivity extends NVActivity {
    boolean succeed;

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onCreate(bundle);
        if (getSupportFragmentManager().findFragmentByTag("dialog") == null) {
            getSupportFragmentManager().beginTransaction().add(R.id.content, new OnBoardingFragment(), "dialog").commit();
        }
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(com.narvii.amino.mastes.R.anim.fade_in, com.narvii.amino.mastes.R.anim.fade_out);
    }
}
