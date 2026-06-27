package com.narvii.scene.service;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChooseSceneTemplateServiceProvider.kt */
/* loaded from: classes.dex */
public final class ChooseSceneTemplateServiceProvider implements ServiceProvider<ChooseSceneTemplateService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ChooseSceneTemplateService chooseSceneTemplateService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ChooseSceneTemplateService chooseSceneTemplateService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ChooseSceneTemplateService chooseSceneTemplateService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ChooseSceneTemplateService chooseSceneTemplateService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ChooseSceneTemplateService chooseSceneTemplateService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public ChooseSceneTemplateService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new ChooseSceneTemplateService(ctx);
    }
}
