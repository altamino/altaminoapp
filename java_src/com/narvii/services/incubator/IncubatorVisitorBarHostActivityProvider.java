package com.narvii.services.incubator;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.community.VisitorBarHost;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class IncubatorVisitorBarHostActivityProvider implements ServiceProvider<VisitorBarHost> {
    private IncubatorVisitorBarHostCommunityProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, VisitorBarHost visitorBarHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, VisitorBarHost visitorBarHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, VisitorBarHost visitorBarHost) {
    }

    public IncubatorVisitorBarHostActivityProvider(IncubatorVisitorBarHostCommunityProvider incubatorVisitorBarHostCommunityProvider) {
        this.parent = incubatorVisitorBarHostCommunityProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public VisitorBarHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, VisitorBarHost visitorBarHost) {
        if (visitorBarHost != null) {
            visitorBarHost.bind((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, VisitorBarHost visitorBarHost) {
        if (visitorBarHost != null) {
            visitorBarHost.unbind();
        }
    }
}
