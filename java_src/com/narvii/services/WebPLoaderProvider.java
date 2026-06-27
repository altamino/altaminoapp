package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.StorageUtils;
import com.narvii.util.drawables.webp.WebPLoader;
import java.io.File;

/* loaded from: classes.dex */
public class WebPLoaderProvider implements ServiceProvider<WebPLoader> {
    File dir;
    int maxSize;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, WebPLoader webPLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, WebPLoader webPLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, WebPLoader webPLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, WebPLoader webPLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, WebPLoader webPLoader) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public WebPLoader create(NVContext nVContext) {
        if (this.dir == null) {
            boolean z = false;
            File externalCacheDir = nVContext.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                externalCacheDir = nVContext.getContext().getCacheDir();
                z = true;
            }
            this.dir = new File(externalCacheDir, "webp");
            if (z) {
                this.maxSize = (int) Math.max(8388608L, Math.min((StorageUtils.getAvailableInternalMemorySize() * 10) / 100, 50331648L));
            } else {
                this.maxSize = (int) Math.max(8388608L, Math.min((StorageUtils.getAvailableExternalMemorySize() * 10) / 100, 125829120L));
            }
        }
        return new WebPLoader(nVContext, this.dir);
    }
}
