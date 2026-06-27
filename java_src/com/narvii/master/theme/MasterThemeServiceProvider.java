package com.narvii.master.theme;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MasterThemeServiceProvider.kt */
/* loaded from: classes.dex */
public final class MasterThemeServiceProvider implements AutostartServiceProvider<MasterThemeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public MasterThemeService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new MasterThemeService(ctx);
    }
}
