package com.narvii.chat.setting.helper;

import android.content.Context;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class ChatWaitingListProvider implements ServiceProvider<ChatWaitingListService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable ChatWaitingListService chatWaitingListService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public ChatWaitingListService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        Context context = ctx.getContext();
        t.h(context, "null cannot be cast to non-null type com.narvii.app.NVActivity");
        return new ChatWaitingListService((NVActivity) context);
    }
}
