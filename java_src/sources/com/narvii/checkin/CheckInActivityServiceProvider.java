package com.narvii.checkin;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class CheckInActivityServiceProvider implements ServiceProvider<CheckInService> {

    @NotNull
    private final CheckInServiceProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    @NotNull
    public final CheckInServiceProvider getParent() {
        return this.parent;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
    }

    public CheckInActivityServiceProvider(@NotNull CheckInServiceProvider parent) {
        t.j(parent, "parent");
        this.parent = parent;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public CheckInService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return this.parent.create(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
        if (checkInService != null) {
            checkInService.unbind();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable CheckInService checkInService) {
        if (checkInService != null) {
            checkInService.bind(nVContext instanceof Activity ? (Activity) nVContext : null);
        }
    }
}
