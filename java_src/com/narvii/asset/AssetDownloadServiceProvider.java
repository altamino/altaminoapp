package com.narvii.asset;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;

/* loaded from: classes.dex */
public class AssetDownloadServiceProvider implements ServiceProvider<AssetDownloader> {
    AssetDownloader assetDownloader;
    protected String path;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, AssetDownloader assetDownloader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, AssetDownloader assetDownloader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, AssetDownloader assetDownloader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, AssetDownloader assetDownloader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, AssetDownloader assetDownloader) {
    }

    public AssetDownloadServiceProvider(String str) {
        this.path = str;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public AssetDownloader create(NVContext nVContext) {
        if (this.assetDownloader == null) {
            this.assetDownloader = getAssetDownloader(nVContext);
        }
        return this.assetDownloader;
    }

    protected AssetDownloader getAssetDownloader(NVContext nVContext) {
        return new AssetDownloader(nVContext, this.path);
    }
}
