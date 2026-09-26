package com.narvii.checkin;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class CheckInServiceProvider implements ServiceProvider<CheckInService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public CheckInService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new CheckInService(ctx);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
        if (checkInService != null) {
            t.h(nVContext, "null cannot be cast to non-null type android.app.Activity");
            checkInService.bind((Activity) nVContext);
        }
    }
}
