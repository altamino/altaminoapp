package com.narvii.services;

import ai.medialab.medialabads2.maliciousadblockers.RedirectBlockingFragmentActivity;
import android.content.Intent;
import com.narvii.amino.MainActivity;
import com.narvii.amino.master.R;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes6.dex */
public class BackToHomeHelper implements AutostartServiceProvider<Object> {
    public static void safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(RedirectBlockingFragmentActivity p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lai/medialab/medialabads2/maliciousadblockers/RedirectBlockingFragmentActivity;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.services.ServiceProvider
    public Object create(NVContext nVContext) {
        return this;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Object obj) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Object obj) {
        if (!(nVContext instanceof NVActivity) || (nVContext instanceof ForwardActivity) || (nVContext instanceof MainActivity) || ApplicationSessionHelper.hasMainStacked()) {
            return;
        }
        NVActivity nVActivity = (NVActivity) nVContext;
        ConfigService configService = (ConfigService) nVActivity.getService("config");
        if (nVActivity.getBooleanParam("_pushIntent") && nVActivity.isFinishing() && !nVActivity.isStartingActivity() && nVActivity.initTaskActivity && configService.getCommunityId() != 0) {
            safedk_RedirectBlockingFragmentActivity_startActivity_df8845b07c3ebd4003c932535b05cc9f(nVActivity, new Intent(nVActivity, (Class<?>) MainActivity.class));
            nVActivity.overridePendingTransition(R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        }
    }
}
