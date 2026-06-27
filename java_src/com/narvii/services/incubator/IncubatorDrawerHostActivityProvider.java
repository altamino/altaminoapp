package com.narvii.services.incubator;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class IncubatorDrawerHostActivityProvider implements ServiceProvider<DrawerHost> {
    private IncubatorDrawerHostCommunityProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DrawerHost drawerHost) {
    }

    public IncubatorDrawerHostActivityProvider(IncubatorDrawerHostCommunityProvider incubatorDrawerHostCommunityProvider) {
        this.parent = incubatorDrawerHostCommunityProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DrawerHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DrawerHost drawerHost) {
        if (drawerHost != null) {
            drawerHost.bind((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DrawerHost drawerHost) {
        if (drawerHost != null) {
            drawerHost.unbind();
        }
    }
}
