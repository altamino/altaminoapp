package com.narvii.media.giphy;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class GiphyStickerServiceProvider implements ServiceProvider<GiphyStickerService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@Nullable NVContext nVContext, @Nullable GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@Nullable NVContext nVContext, @Nullable GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@Nullable NVContext nVContext, @Nullable GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@Nullable NVContext nVContext, @Nullable GiphyStickerService giphyStickerService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@Nullable NVContext nVContext, @Nullable GiphyStickerService giphyStickerService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public GiphyStickerService create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new GiphyStickerService(ctx);
    }
}
