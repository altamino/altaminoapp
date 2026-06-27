package com.narvii.services;

import com.narvii.app.AminoNavigator;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.navigator.Navigator;
import com.narvii.util.PackageUtils;

/* loaded from: classes.dex */
public class AminoNavigatorProvider implements ServiceProvider<Navigator> {
    int cid;
    String scheme;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, Navigator navigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, Navigator navigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, Navigator navigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, Navigator navigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, Navigator navigator) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public synchronized Navigator create(NVContext nVContext) {
        if (this.scheme == null) {
            NVApplication nVApplicationInstance = NVApplication.instance();
            PackageUtils packageUtils = new PackageUtils(nVApplicationInstance.getContext());
            ConfigService configService = (ConfigService) nVApplicationInstance.getService("config");
            this.scheme = packageUtils.getScheme(configService.getCommunityId());
            this.cid = configService.getCommunityId();
        }
        return new AminoNavigator(nVContext, this.scheme, this.cid);
    }
}
