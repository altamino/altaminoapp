package com.narvii.services;

import com.narvii.app.NVContext;

/* loaded from: classes.dex */
public class EventLogProfileServiceProvider implements AutostartServiceProvider<EventLogProfileService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, EventLogProfileService eventLogProfileService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, EventLogProfileService eventLogProfileService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, EventLogProfileService eventLogProfileService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, EventLogProfileService eventLogProfileService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public EventLogProfileService create(NVContext nVContext) {
        return new EventLogProfileService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, EventLogProfileService eventLogProfileService) {
        eventLogProfileService.resume();
    }
}
