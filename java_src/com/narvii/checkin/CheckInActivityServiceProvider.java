package com.narvii.checkin;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CheckInActivityServiceProvider.kt */
/* loaded from: classes.dex */
public final class CheckInActivityServiceProvider implements ServiceProvider<CheckInService> {
    private final CheckInServiceProvider parent;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CheckInService checkInService) {
    }

    public CheckInActivityServiceProvider(CheckInServiceProvider parent) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        this.parent = parent;
    }

    public final CheckInServiceProvider getParent() {
        return this.parent;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CheckInService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return this.parent.create(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CheckInService checkInService) {
        if (checkInService != null) {
            boolean z = nVContext instanceof Activity;
            Object obj = nVContext;
            if (!z) {
                obj = null;
            }
            checkInService.bind((Activity) obj);
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CheckInService checkInService) {
        if (checkInService != null) {
            checkInService.unbind();
        }
    }
}
