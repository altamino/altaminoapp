package com.narvii.services.incubator;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.community.CBBHost;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class IncubatorCBBHostActivityProvider implements ServiceProvider<CBBHost> {
    private IncubatorCBBHostCommunityProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CBBHost cBBHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CBBHost cBBHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CBBHost cBBHost) {
    }

    public IncubatorCBBHostActivityProvider(IncubatorCBBHostCommunityProvider incubatorCBBHostCommunityProvider) {
        this.parent = incubatorCBBHostCommunityProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CBBHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CBBHost cBBHost) {
        if (cBBHost != null) {
            cBBHost.bind((Activity) nVContext);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CBBHost cBBHost) {
        if (cBBHost != null) {
            cBBHost.unbind();
        }
    }
}
