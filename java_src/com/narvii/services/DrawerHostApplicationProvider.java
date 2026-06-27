package com.narvii.services;

import android.content.Context;
import android.content.res.Resources;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class DrawerHostApplicationProvider implements AutostartServiceProvider<DrawerHost> {
    private WeakReference<DrawerHost> cache;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DrawerHost drawerHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public DrawerHost create(NVContext nVContext) {
        WeakReference<DrawerHost> weakReference = this.cache;
        DrawerHost drawerHost = weakReference == null ? null : weakReference.get();
        if (drawerHost != null) {
            return drawerHost;
        }
        DrawerHost drawerHost2 = (DrawerHost) LayoutInflater.from(new VirtualContext(NVApplication.instance(), R.style.AminoTheme)).inflate(R.layout.drawer_host, (ViewGroup) null);
        this.cache = new WeakReference<>(drawerHost2);
        return drawerHost2;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DrawerHost drawerHost) throws Resources.NotFoundException {
        drawerHost.refreshCommunityInfo(0L);
        drawerHost.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.stop();
    }

    static class VirtualContext extends ContextThemeWrapper implements NVContext {
        NVContext base;

        @Override // com.narvii.app.NVContext
        public Context getContext() {
            return this;
        }

        @Override // com.narvii.app.NVContext
        public long getContextId() {
            return 0L;
        }

        VirtualContext(NVContext nVContext, int i) {
            super(nVContext.getContext(), i);
            this.base = nVContext;
        }

        @Override // com.narvii.app.NVContext
        public <T> T getService(String str) {
            return (T) NVApplication.instance().getService(str);
        }

        @Override // com.narvii.app.NVContext
        public NVContext getParentContext() {
            return this.base;
        }
    }
}
