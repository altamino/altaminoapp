package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.poll.PollService;

/* loaded from: classes.dex */
public class PollServiceProvider implements ServiceProvider<PollService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, PollService pollService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, PollService pollService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, PollService pollService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, PollService pollService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, PollService pollService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public PollService create(NVContext nVContext) {
        return new PollService(nVContext);
    }
}
