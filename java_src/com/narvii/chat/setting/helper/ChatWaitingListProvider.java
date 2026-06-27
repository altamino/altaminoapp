package com.narvii.chat.setting.helper;

import android.content.Context;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatWaitingListProvider.kt */
/* loaded from: classes.dex */
public final class ChatWaitingListProvider implements ServiceProvider<ChatWaitingListService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, ChatWaitingListService chatWaitingListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, ChatWaitingListService chatWaitingListService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public ChatWaitingListService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Context context = ctx.getContext();
        if (context != null) {
            return new ChatWaitingListService((NVActivity) context);
        }
        throw new TypeCastException("null cannot be cast to non-null type com.narvii.app.NVActivity");
    }
}
