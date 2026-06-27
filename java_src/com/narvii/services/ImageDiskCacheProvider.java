package com.narvii.services;

import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.StorageUtils;
import com.narvii.util.Utils;
import com.narvii.util.image.DiskLruCacheWrapper;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class ImageDiskCacheProvider implements ServiceProvider<DiskLruCacheWrapper> {
    static final long TTL = 172800000;
    File dir;
    int maxSize;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, DiskLruCacheWrapper diskLruCacheWrapper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, DiskLruCacheWrapper diskLruCacheWrapper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, DiskLruCacheWrapper diskLruCacheWrapper) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, DiskLruCacheWrapper diskLruCacheWrapper) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public DiskLruCacheWrapper create(NVContext nVContext) throws IOException {
        if (this.dir == null) {
            boolean z = false;
            File externalCacheDir = nVContext.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                Log.w("fail to get external cache dir, using internal cache instead");
                externalCacheDir = nVContext.getContext().getCacheDir();
                z = true;
            }
            this.dir = new File(externalCacheDir, "img");
            if (z) {
                this.maxSize = (int) Math.max(4194304L, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 16777216L));
            } else {
                this.maxSize = (int) Math.max(4194304L, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 33554432L));
                Utils.touch(new File(externalCacheDir.getParentFile(), ".nomedia"));
            }
        }
        return new DiskLruCacheWrapper(this.dir);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, DiskLruCacheWrapper diskLruCacheWrapper) {
        diskLruCacheWrapper.trimAndFlush(this.maxSize, System.currentTimeMillis() - TTL);
    }
}
