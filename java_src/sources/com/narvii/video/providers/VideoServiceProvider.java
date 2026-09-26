package com.narvii.video.providers;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import com.narvii.video.services.VideoManager;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class VideoServiceProvider implements ServiceProvider<VideoManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(@NotNull NVContext ctx, @Nullable VideoManager videoManager) {
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@NotNull NVContext ctx, @Nullable VideoManager videoManager) {
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@NotNull NVContext ctx, @Nullable VideoManager videoManager) {
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@NotNull NVContext ctx, @Nullable VideoManager videoManager) {
        t.j(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@NotNull NVContext ctx, @Nullable VideoManager videoManager) {
        t.j(ctx, "ctx");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public VideoManager create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new VideoManager(ctx);
    }
}
