package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.app.incubator.IncubatorNavigator;
import com.narvii.services.ServiceProvider;
import com.narvii.util.PackageUtils;

/* loaded from: classes.dex */
public class IncubatorNavigatorProvider implements ServiceProvider<IncubatorNavigator> {
    private static String scheme;
    private static boolean schemeInited;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, IncubatorNavigator incubatorNavigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, IncubatorNavigator incubatorNavigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, IncubatorNavigator incubatorNavigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, IncubatorNavigator incubatorNavigator) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, IncubatorNavigator incubatorNavigator) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public IncubatorNavigator create(NVContext nVContext) {
        int i = nVContext instanceof CommunityContext ? ((CommunityContext) nVContext).cid : 0;
        if (!schemeInited) {
            scheme = new PackageUtils(nVContext.getContext()).getMasterScheme();
            schemeInited = true;
        }
        return new IncubatorNavigator(nVContext, scheme, i);
    }
}
