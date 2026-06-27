package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.media.MediaPlayerManager;

/* loaded from: classes.dex */
public class MediaPlayerProvider implements ServiceProvider<MediaPlayerManager> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MediaPlayerManager mediaPlayerManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaPlayerManager mediaPlayerManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MediaPlayerManager mediaPlayerManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MediaPlayerManager mediaPlayerManager) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MediaPlayerManager mediaPlayerManager) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MediaPlayerManager create(NVContext nVContext) {
        return new MediaPlayerManager(nVContext);
    }
}
