package com.narvii.services;

import android.app.Application;
import com.narvii.app.AminoConfig;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.util.Log;

/* JADX INFO: loaded from: classes11.dex */
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
        if (this.config == null) {
            this.config = new AminoConfig(nVContext);
        }
        int i_communityId = nVContext instanceof NVActivity ? ((NVActivity) nVContext)._communityId() : this.config.getCommunityId();
        if (i_communityId <= 0) {
            return i_communityId == 0 ? this.config.getGlobalConfig() : this.config;
        }
        if (i_communityId != this.config.getCommunityId()) {
            Log.e("can't create x" + i_communityId + " context in standalone app x" + this.config.getCommunityId());
        }
        return this.config;
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AminoConfig aminoConfig) {
        if (nVContext instanceof Application) {
            aminoConfig.update(NVApplication.DEBUG ? 300000L : 3600000L);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AminoConfig aminoConfig) throws Throwable {
        if (nVContext instanceof Application) {
            aminoConfig.start();
        }
    }
}
