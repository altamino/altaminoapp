package com.narvii.chat.service;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MyChatListServiceProvider.kt */
/* loaded from: classes.dex */
public final class MyChatListServiceProvider implements ServiceProvider<MyChatListService> {
    public MyChatListService myChatListService;

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MyChatListService myChatListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MyChatListService myChatListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MyChatListService myChatListService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MyChatListService myChatListService) {
    }

    public final MyChatListService getMyChatListService() {
        MyChatListService myChatListService = this.myChatListService;
        if (myChatListService != null) {
            return myChatListService;
        }
        Intrinsics.throwUninitializedPropertyAccessException("myChatListService");
        throw null;
    }

    public final void setMyChatListService(MyChatListService myChatListService) {
        Intrinsics.checkParameterIsNotNull(myChatListService, "<set-?>");
        this.myChatListService = myChatListService;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MyChatListService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        this.myChatListService = new MyChatListService(ctx);
        MyChatListService myChatListService = this.myChatListService;
        if (myChatListService == null) {
            Intrinsics.throwUninitializedPropertyAccessException("myChatListService");
            throw null;
        }
        myChatListService.onCreate(ctx);
        MyChatListService myChatListService2 = this.myChatListService;
        if (myChatListService2 != null) {
            return myChatListService2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("myChatListService");
        throw null;
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MyChatListService myChatListService) {
        MyChatListService myChatListService2 = this.myChatListService;
        if (myChatListService2 != null) {
            myChatListService2.onDestroy(nVContext);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("myChatListService");
            throw null;
        }
    }
}
