package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.sticker.StickerCacheService;

/* loaded from: classes.dex */
public class StickerCacheServiceProvider implements ServiceProvider<StickerCacheService> {
    StickerCacheService stickerCacheService;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, StickerCacheService stickerCacheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, StickerCacheService stickerCacheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, StickerCacheService stickerCacheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, StickerCacheService stickerCacheService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, StickerCacheService stickerCacheService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public StickerCacheService create(NVContext nVContext) {
        if (this.stickerCacheService == null) {
            this.stickerCacheService = new StickerCacheService(nVContext);
        }
        return this.stickerCacheService;
    }
}
