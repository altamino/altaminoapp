package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.chat.rtc.RtcService;
import com.narvii.livelayer.ws.LiveLayerWsService;

/* loaded from: classes.dex */
public class LiverLayerWSServiceProvider implements AutostartServiceProvider<LiveLayerWsService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, LiveLayerWsService liveLayerWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, LiveLayerWsService liveLayerWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, LiveLayerWsService liveLayerWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, LiveLayerWsService liveLayerWsService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public LiveLayerWsService create(NVContext nVContext) {
        return new LiveLayerWsService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, LiveLayerWsService liveLayerWsService) {
        RtcService rtcService = (RtcService) nVContext.getService("rtc");
        if (rtcService == null || rtcService.getShowingWindowType() == -1) {
            liveLayerWsService.reportActiveTimeMap.clear();
        }
    }
}
