package com.narvii.services;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;

/* JADX INFO: loaded from: classes9.dex */
public class DrawerHostActivityProvider implements ServiceProvider<DrawerHost> {
    ServiceProvider<DrawerHost> parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DrawerHost drawerHost) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DrawerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.unbind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.bind((Activity) nVContext);
    }

    public DrawerHostActivityProvider(ServiceProvider<DrawerHost> serviceProvider) {
        this.parent = serviceProvider;
    }
}
