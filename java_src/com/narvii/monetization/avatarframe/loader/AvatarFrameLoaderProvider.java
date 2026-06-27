package com.narvii.monetization.avatarframe.loader;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import com.narvii.util.fileloader.FileLoader;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AvatarFrameLoaderProvider.kt */
/* loaded from: classes.dex */
public final class AvatarFrameLoaderProvider implements ServiceProvider<FileLoader> {
    private final long TTL = 172800000;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public FileLoader create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new AvatarFrameLoader(ctx);
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext ctx, FileLoader fileLoader) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onStart();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext ctx, FileLoader fileLoader) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onResume();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext ctx, FileLoader fileLoader) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.trimAndFlush(System.currentTimeMillis() - this.TTL);
        }
        if (fileLoader != null) {
            fileLoader.onPause();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext ctx, FileLoader fileLoader) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onStop();
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext ctx, FileLoader fileLoader) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        if (fileLoader != null) {
            fileLoader.onDestroy();
        }
    }
}
