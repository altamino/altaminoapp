package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.deviceid.DeviceIDService;

/* loaded from: classes.dex */
public class DeviceIDServiceProvider implements ServiceProvider<DeviceIDService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DeviceIDService deviceIDService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DeviceIDService deviceIDService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DeviceIDService deviceIDService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DeviceIDService deviceIDService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DeviceIDService deviceIDService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DeviceIDService create(NVContext nVContext) {
        return new DeviceIDService(nVContext);
    }
}
