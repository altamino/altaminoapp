package com.narvii.services;

import android.app.Application;
import com.narvii.app.AminoConfig;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Log;

/* loaded from: classes.dex */
public class AminoConfigProvider implements AutostartServiceProvider<AminoConfig> {
    private AminoConfig config;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AminoConfig aminoConfig) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AminoConfig aminoConfig) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AminoConfig aminoConfig) {
    }

    @Override // com.narvii.services.ServiceProvider
    public AminoConfig create(NVContext nVContext) {
        int communityId;
        if (this.config == null) {
            this.config = new AminoConfig(nVContext);
        }
        if (nVContext instanceof NVActivity) {
            communityId = ((NVActivity) nVContext)._communityId();
        } else {
            communityId = this.config.getCommunityId();
        }
        if (communityId <= 0) {
            if (communityId == 0) {
                return this.config.getGlobalConfig();
            }
            return this.config;
        }
        if (communityId != this.config.getCommunityId()) {
            Log.e("can't create x" + communityId + " context in standalone app x" + this.config.getCommunityId());
        }
        return this.config;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AminoConfig aminoConfig) throws Throwable {
        if (nVContext instanceof Application) {
            aminoConfig.start();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AminoConfig aminoConfig) {
        if (nVContext instanceof Application) {
            aminoConfig.update(NVApplication.DEBUG ? 300000L : 3600000L);
        }
    }
}
