package com.narvii.services;

import com.narvii.account.AuidService;
import com.narvii.app.NVContext;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AuidServiceProvider.kt */
/* loaded from: classes.dex */
public final class AuidServiceProvider implements AutostartServiceProvider<AuidService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public AuidService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new AuidService(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AuidService auidService) {
        if (auidService != null) {
            auidService.refreshAuid();
        }
    }
}
