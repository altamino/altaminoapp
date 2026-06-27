package com.narvii.services;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* loaded from: classes.dex */
public class CommunityStatusHelper implements AutostartServiceProvider<Object> {
    public static final String ACTION_COMMUNITY_PAUSE = "action_community_pause";

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
        Intent intent = new Intent(ACTION_COMMUNITY_PAUSE);
        intent.putExtra("cid", ((ConfigService) nVContext.getService("config")).getCommunityId());
        LocalBroadcastManager.getInstance(nVContext.getContext()).sendBroadcast(intent);
    }
}
