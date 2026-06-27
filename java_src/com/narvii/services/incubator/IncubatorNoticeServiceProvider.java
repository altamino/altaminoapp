package com.narvii.services.incubator;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class IncubatorNoticeServiceProvider implements AutostartServiceProvider<IncubatorNoticeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, IncubatorNoticeService incubatorNoticeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, IncubatorNoticeService incubatorNoticeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, IncubatorNoticeService incubatorNoticeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, IncubatorNoticeService incubatorNoticeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, IncubatorNoticeService incubatorNoticeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public IncubatorNoticeService create(NVContext nVContext) {
        return new IncubatorNoticeService(nVContext);
    }
}
