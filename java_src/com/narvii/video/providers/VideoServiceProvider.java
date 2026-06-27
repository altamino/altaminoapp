package com.narvii.video.providers;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import com.narvii.video.services.VideoManager;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VideoServiceProvider.kt */
/* loaded from: classes.dex */
public final class VideoServiceProvider implements ServiceProvider<VideoManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext ctx, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext ctx, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext ctx, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext ctx, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext ctx, VideoManager videoManager) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public VideoManager create(NVContext ctx) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        return new VideoManager(ctx);
    }
}
