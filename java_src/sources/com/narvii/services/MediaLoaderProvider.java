package com.narvii.services;

import android.support.v4.media.session.PlaybackStateCompat;
import com.narvii.app.NVContext;
import com.narvii.media.MediaLoader;
import com.narvii.util.StorageUtils;
import java.io.File;

/* JADX INFO: loaded from: classes11.dex */
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
        boolean z6;
        if (this.dir == null) {
            File externalCacheDir = nVContext.getContext().getExternalCacheDir();
            if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
                externalCacheDir = nVContext.getContext().getCacheDir();
                z6 = true;
            } else {
                z6 = false;
            }
            File file = new File(externalCacheDir, "audio");
            this.dir = file;
            file.mkdirs();
            if (z6) {
                this.maxSize = (int) Math.max(PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 16777216L));
            } else {
                this.maxSize = (int) Math.max(PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED, Math.min((StorageUtils.getAvailableExternalMemorySize(nVContext.getContext()) * 3) / 100, 33554432L));
            }
        }
        return new MediaLoader(nVContext.getContext(), this.dir);
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, MediaLoader mediaLoader) {
        mediaLoader.trimAndFlush(this.maxSize, System.currentTimeMillis() - 172800000);
    }
}
