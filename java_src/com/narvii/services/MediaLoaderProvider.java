package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.media.MediaLoader;
import com.narvii.util.StorageUtils;
import java.io.File;

/* loaded from: classes.dex */
public class MediaLoaderProvider implements ServiceProvider<MediaLoader> {
    File dir;
    int maxSize;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, MediaLoader mediaLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, MediaLoader mediaLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, MediaLoader mediaLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, MediaLoader mediaLoader) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public MediaLoader create(NVContext nVContext) {
        if (this.dir == null) {
            boolean z = false;
            File externalCacheDir = nVContext.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                externalCacheDir = nVContext.getContext().getCacheDir();
                z = true;
            }
            this.dir = new File(externalCacheDir, "audio");
            this.dir.mkdirs();
            if (z) {
                this.maxSize = (int) Math.max(4194304L, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 16777216L));
            } else {
                this.maxSize = (int) Math.max(4194304L, Math.min((StorageUtils.getAvailableExternalMemorySize() * 3) / 100, 33554432L));
            }
        }
        return new MediaLoader(nVContext.getContext(), this.dir);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaLoader mediaLoader) {
        mediaLoader.trimAndFlush(this.maxSize, System.currentTimeMillis() - 172800000);
    }
}
