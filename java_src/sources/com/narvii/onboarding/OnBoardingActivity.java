package com.narvii.onboarding;

import android.os.Bundle;
import com.narvii.amino.master.R;
import com.narvii.app.NVActivity;
import com.narvii.util.statistics.StatisticsService;

/* JADX INFO: loaded from: classes11.dex */
public class OnBoardingActivity extends NVActivity {
    boolean succeed;

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        ((StatisticsService) getService("statistics")).event("Community Onboarding Result").param("Result", this.succeed ? "Succeess" : "Skip");
        super.finish();
    }

    @Override // com.narvii.app.NVActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getSupportFragmentManager().m0("dialog") == null) {
            getSupportFragmentManager().q().c(android.R.id.content, new OnBoardingFragment(), "dialog").j();
        }
    }
}
