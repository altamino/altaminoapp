package com.narvii.services;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.community.CBBHost;

/* loaded from: classes.dex */
public class CBBHostActivityProvider implements ServiceProvider<CBBHost> {
    ServiceProvider<CBBHost> parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CBBHost cBBHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CBBHost cBBHost) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CBBHost cBBHost) {
    }

    public CBBHostActivityProvider(ServiceProvider<CBBHost> serviceProvider) {
        this.parent = serviceProvider;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CBBHost create(NVContext nVContext) {
        return this.parent.create(nVContext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.bind((Activity) nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CBBHost cBBHost) {
        cBBHost.unbind();
    }
}
