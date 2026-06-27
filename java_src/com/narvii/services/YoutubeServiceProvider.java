package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.youtube.YoutubeService;

/* loaded from: classes.dex */
public class YoutubeServiceProvider implements ServiceProvider<YoutubeService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, YoutubeService youtubeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, YoutubeService youtubeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, YoutubeService youtubeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, YoutubeService youtubeService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, YoutubeService youtubeService) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public YoutubeService create(NVContext nVContext) {
        return new YoutubeService(nVContext);
    }
}
