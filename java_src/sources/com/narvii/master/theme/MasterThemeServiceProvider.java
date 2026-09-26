package com.narvii.master.theme;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class MasterThemeServiceProvider implements AutostartServiceProvider<MasterThemeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable MasterThemeService masterThemeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public MasterThemeService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new MasterThemeService(ctx);
    }
}
