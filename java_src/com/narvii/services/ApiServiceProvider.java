package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.http.ApiService;

/* loaded from: classes.dex */
public class ApiServiceProvider implements ServiceProvider<ApiService> {
    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ApiService apiService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ApiService apiService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ApiService apiService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ApiService apiService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public ApiService create(NVContext nVContext) {
        return new ApiService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ApiService apiService) {
        apiService.abortAll(false);
    }
}
