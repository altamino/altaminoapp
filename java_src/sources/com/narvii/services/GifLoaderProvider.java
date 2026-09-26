package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.StorageUtils;
import com.narvii.util.drawables.gif.GifLoader;
import java.io.File;

/* JADX INFO: loaded from: classes11.dex */
public class GifLoaderProvider implements ServiceProvider<GifLoader> {
    static final long TTL = 172800000;
    File dir;
    int maxSize;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, GifLoader gifLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, GifLoader gifLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, GifLoader gifLoader) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public GifLoader create(NVContext nVContext) {
        boolean z6;
        if (this.dir == null) {
            File externalCacheDir = nVContext.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                externalCacheDir = nVContext.getContext().getCacheDir();
                z6 = true;
            } else {
                z6 = false;
            }
            this.dir = new File(externalCacheDir, "gif");
            if (z6) {
                this.maxSize = (int) Math.max(8388608L, Math.min((StorageUtils.getAvailableInternalMemorySize() * 10) / 100, 50331648L));
            } else {
                this.maxSize = (int) Math.max(8388608L, Math.min((StorageUtils.getAvailableExternalMemorySize(nVContext.getContext()) * 10) / 100, 125829120L));
            }
        }
        return new GifLoader(nVContext, this.dir);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, GifLoader gifLoader) {
        gifLoader.trimAndFlush(this.maxSize, System.currentTimeMillis() - TTL);
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, GifLoader gifLoader) {
        gifLoader.abortAll();
    }
}
