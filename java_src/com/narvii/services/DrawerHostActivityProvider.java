package com.narvii.services;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;

/* loaded from: classes.dex */
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

    public DrawerHostActivityProvider(ServiceProvider<DrawerHost> serviceProvider) {
        this.parent = serviceProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DrawerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.bind((Activity) nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.unbind();
    }
}
