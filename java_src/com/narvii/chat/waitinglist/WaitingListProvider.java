package com.narvii.chat.waitinglist;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WaitingListProvider.kt */
/* loaded from: classes.dex */
public final class WaitingListProvider implements AutostartServiceProvider<WaitingListService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public WaitingListService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new WaitingListService(ctx);
    }
}
