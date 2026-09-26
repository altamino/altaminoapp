package com.narvii.chat.service;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MyChatListServiceProvider implements ServiceProvider<MyChatListService> {
    public MyChatListService myChatListService;

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable MyChatListService myChatListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable MyChatListService myChatListService) {
    }

    public final void setMyChatListService(@NotNull MyChatListService myChatListService) {
        t.j(myChatListService, "<set-?>");
        this.myChatListService = myChatListService;
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable MyChatListService myChatListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable MyChatListService myChatListService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public MyChatListService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        setMyChatListService(new MyChatListService(ctx));
        getMyChatListService().onCreate(ctx);
        return getMyChatListService();
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable MyChatListService myChatListService) {
        getMyChatListService().onDestroy(nVContext);
    }

    @NotNull
    public final MyChatListService getMyChatListService() {
        MyChatListService myChatListService = this.myChatListService;
        if (myChatListService != null) {
            return myChatListService;
        }
        t.B("myChatListService");
        return null;
    }
}
