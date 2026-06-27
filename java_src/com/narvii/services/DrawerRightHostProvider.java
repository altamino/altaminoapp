package com.narvii.services;

import android.app.Activity;
import android.app.Application;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerRightHost;
import com.narvii.services.DrawerHostApplicationProvider;

/* loaded from: classes.dex */
public class DrawerRightHostProvider implements ServiceProvider<DrawerRightHost> {
    DrawerRightHost host;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DrawerRightHost drawerRightHost) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DrawerRightHost create(NVContext nVContext) {
        if (this.host == null) {
            this.host = (DrawerRightHost) LayoutInflater.from(new DrawerHostApplicationProvider.VirtualContext(NVApplication.instance(), R.style.AminoTheme)).inflate(R.layout.drawer_right_host, (ViewGroup) null);
        }
        return this.host;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DrawerRightHost drawerRightHost) {
        drawerRightHost.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DrawerRightHost drawerRightHost) {
        if (nVContext instanceof Activity) {
            drawerRightHost.bind((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DrawerRightHost drawerRightHost) {
        if (nVContext instanceof Activity) {
            drawerRightHost.unbind();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DrawerRightHost drawerRightHost) {
        if (nVContext instanceof Application) {
            drawerRightHost.reset();
        }
        drawerRightHost.stop();
    }
}
