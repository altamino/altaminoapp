package com.narvii.services;

import android.content.Intent;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* loaded from: classes.dex */
public class BackToHomeHelper implements AutostartServiceProvider<Object> {
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
            nVActivity.startActivity(new Intent(nVActivity, (Class<?>) MainActivity.class));
            nVActivity.overridePendingTransition(R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        }
    }
}
