package com.narvii.monetization.avatarframe.loader;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import com.narvii.util.fileloader.FileLoader;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class AvatarFrameLoaderProvider implements ServiceProvider<FileLoader> {
    private final long TTL = 172800000;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    @NotNull
    public FileLoader create(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        return new AvatarFrameLoader(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(@NotNull NVContext ctx, @Nullable FileLoader fileLoader) {
        t.j(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onDestroy();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(@NotNull NVContext ctx, @Nullable FileLoader fileLoader) {
        t.j(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.trimAndFlush(System.currentTimeMillis() - this.TTL);
        }
        if (fileLoader != null) {
            fileLoader.onPause();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(@NotNull NVContext ctx, @Nullable FileLoader fileLoader) {
        t.j(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onResume();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(@NotNull NVContext ctx, @Nullable FileLoader fileLoader) {
        t.j(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onStart();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(@NotNull NVContext ctx, @Nullable FileLoader fileLoader) {
        t.j(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onStop();
        }
    }
}
