package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.monetization.sticker.StickerService;
import com.narvii.services.util.SoftRetainedAutoStartServiceProvider;

/* loaded from: classes.dex */
public class StickerServiceProvider extends SoftRetainedAutoStartServiceProvider<StickerService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, StickerService stickerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.util.SoftRetainedAutoStartServiceProvider
    public StickerService createNew(NVContext nVContext) {
        return new StickerService(nVContext);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, StickerService stickerService) {
        stickerService.onStart();
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, StickerService stickerService) {
        stickerService.onResume();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, StickerService stickerService) {
        stickerService.onPause();
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, StickerService stickerService) {
        stickerService.onStop();
    }
}
