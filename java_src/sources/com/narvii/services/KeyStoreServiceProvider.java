package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.security.KeyStoreService;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class KeyStoreServiceProvider implements AutostartServiceProvider<KeyStoreService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable KeyStoreService keyStoreService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable KeyStoreService keyStoreService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable KeyStoreService keyStoreService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable KeyStoreService keyStoreService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable KeyStoreService keyStoreService) {
    }

    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public KeyStoreService create(@Nullable NVContext nVContext) {
        return new KeyStoreService(nVContext);
    }
}
