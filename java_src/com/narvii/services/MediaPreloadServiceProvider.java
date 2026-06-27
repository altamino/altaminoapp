package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import com.narvii.video.MediaPreloadService;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class MediaPreloadServiceProvider implements AutostartServiceProvider<MediaPreloadService> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MediaPreloadService mediaPreloadService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaPreloadService mediaPreloadService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MediaPreloadService mediaPreloadService) {
    }

    @Override // com.narvii.services.ServiceProvider
    public MediaPreloadService create(NVContext nVContext) {
        return new MediaPreloadService(nVContext, new File(nVContext.getContext().getCacheDir(), "media-preload"));
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MediaPreloadService mediaPreloadService) {
        try {
            mediaPreloadService.start();
        } catch (IOException unused) {
            Log.e("fail to start media proxy server");
        }
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MediaPreloadService mediaPreloadService) {
        mediaPreloadService.clean(12, DateUtils.ONE_DAY, true);
    }
}
