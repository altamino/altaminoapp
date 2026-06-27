package com.narvii.services.incubator;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.drawer.DrawerHost;
import com.narvii.services.util.HostCommunityProvider;

/* loaded from: classes.dex */
public class IncubatorDrawerHostCommunityProvider extends HostCommunityProvider<DrawerHost> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.services.util.HostCommunityProvider
    public DrawerHost createProxyHost(Context context) {
        return (DrawerHost) LayoutInflater.from(context).inflate(R.layout.drawer_host, (ViewGroup) null);
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DrawerHost drawerHost) throws Resources.NotFoundException {
        drawerHost.start();
    }

    @Override // com.narvii.services.util.HostCommunityProvider, com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DrawerHost drawerHost) {
        drawerHost.stop();
    }
}
