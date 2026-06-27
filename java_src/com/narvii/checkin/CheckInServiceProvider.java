package com.narvii.checkin;

import android.app.Activity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CheckInServiceProvider.kt */
/* loaded from: classes.dex */
public final class CheckInServiceProvider implements ServiceProvider<CheckInService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, CheckInService checkInService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, CheckInService checkInService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public CheckInService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new CheckInService(ctx);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, CheckInService checkInService) {
        if (checkInService != null) {
            if (nVContext == 0) {
                throw new TypeCastException("null cannot be cast to non-null type android.app.Activity");
            }
            checkInService.bind((Activity) nVContext);
        }
    }
}
