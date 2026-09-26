package com.narvii.services;

import com.narvii.account.AuidService;
import com.narvii.app.NVContext;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class AuidServiceProvider implements AutostartServiceProvider<AuidService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable AuidService auidService) {
    }

    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public AuidService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new AuidService(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable AuidService auidService) {
        if (auidService != null) {
            auidService.refreshAuid();
        }
    }
}
