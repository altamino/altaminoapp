package com.narvii.services;

import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;

/* JADX INFO: loaded from: classes9.dex */
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
        intent.putExtra(CmcdConfiguration.KEY_CONTENT_ID, ((ConfigService) nVContext.getService("config")).getCommunityId());
        LocalBroadcastManager.b(nVContext.getContext()).d(intent);
    }
}
