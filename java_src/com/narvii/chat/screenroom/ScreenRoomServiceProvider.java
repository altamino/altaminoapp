package com.narvii.chat.screenroom;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;

/* loaded from: classes.dex */
public class ScreenRoomServiceProvider implements AutostartServiceProvider<ScreenRoomService> {
    ScreenRoomService screenRoomService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ScreenRoomService screenRoomService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ScreenRoomService screenRoomService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ScreenRoomService screenRoomService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ScreenRoomService screenRoomService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ScreenRoomService screenRoomService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public ScreenRoomService create(NVContext nVContext) {
        this.screenRoomService = new ScreenRoomService(nVContext);
        return this.screenRoomService;
    }
}
