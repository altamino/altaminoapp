package com.narvii.media.giphy;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GiphyStickerServiceProvider.kt */
/* loaded from: classes3.dex */
public final class GiphyStickerServiceProvider implements ServiceProvider<GiphyStickerService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GiphyStickerService giphyStickerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public GiphyStickerService create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new GiphyStickerService(ctx);
    }
}
