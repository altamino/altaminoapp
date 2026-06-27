package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.headlines.GuestLikeHelper;

/* loaded from: classes3.dex */
public class GuestLikeServiceProvider implements ServiceProvider<GuestLikeHelper> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GuestLikeHelper guestLikeHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GuestLikeHelper guestLikeHelper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GuestLikeHelper guestLikeHelper) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public GuestLikeHelper create(NVContext nVContext) {
        return new GuestLikeHelper(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GuestLikeHelper guestLikeHelper) {
        guestLikeHelper.start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GuestLikeHelper guestLikeHelper) {
        guestLikeHelper.stop();
    }
}
