package com.narvii.services.incubator;

import android.content.Intent;
import com.narvii.amino.MainActivity;
import com.narvii.amino.mastes.R;
import com.narvii.app.ApplicationSessionHelper;
import com.narvii.app.ForwardActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.master.MasterActivity;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class IncubatorBackToHomeHelper implements AutostartServiceProvider<Object> {
    public static final String NOT_SHOW_LOGIN_WHEN_OPEN_MASTER = "not_show_login_when_open_master";

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
        if (!(nVContext instanceof NVActivity) || (nVContext instanceof ForwardActivity) || (nVContext instanceof MainActivity) || (nVContext instanceof MasterActivity) || ApplicationSessionHelper.hasMainStacked() || ApplicationSessionHelper.hasMasterStacked()) {
            return;
        }
        NVActivity nVActivity = (NVActivity) nVContext;
        if (nVActivity.getBooleanParam("_pushIntent") && nVActivity.isFinishing() && !nVActivity.isStartingActivity() && nVActivity.initTaskActivity) {
            ConfigService configService = (ConfigService) nVActivity.getService("config");
            AffiliationsService affiliationsService = (AffiliationsService) nVActivity.getService("affiliations");
            int communityId = configService.getCommunityId();
            if (!affiliationsService.contains(communityId)) {
                communityId = 0;
            }
            if (communityId == 0) {
                Intent intent = new Intent(nVActivity, (Class<?>) MasterActivity.class);
                if (nVActivity.getIntent() != null && nVActivity.getIntent().getExtras() != null && nVActivity.getIntent().getExtras().containsKey(NOT_SHOW_LOGIN_WHEN_OPEN_MASTER)) {
                    intent.putExtra(NOT_SHOW_LOGIN_WHEN_OPEN_MASTER, nVActivity.getIntent().getExtras().getBoolean(NOT_SHOW_LOGIN_WHEN_OPEN_MASTER, false));
                }
                nVActivity.startActivity(intent);
                nVActivity.overridePendingTransition(R.anim.activity_push_right_in, R.anim.activity_push_right_out);
                return;
            }
            Intent intent2 = new Intent(nVActivity, (Class<?>) MainActivity.class);
            intent2.putExtra("__communityId", configService.getCommunityId());
            nVActivity.startActivity(intent2);
            nVActivity.overridePendingTransition(R.anim.activity_push_right_in, R.anim.activity_push_right_out);
        }
    }
}
