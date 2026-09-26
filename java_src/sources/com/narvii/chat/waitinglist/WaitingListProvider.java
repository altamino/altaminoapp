package com.narvii.chat.waitinglist;

import com.narvii.app.NVContext;
import com.narvii.services.AutostartServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class WaitingListProvider implements AutostartServiceProvider<WaitingListService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable WaitingListService waitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public WaitingListService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new WaitingListService(ctx);
    }
}
