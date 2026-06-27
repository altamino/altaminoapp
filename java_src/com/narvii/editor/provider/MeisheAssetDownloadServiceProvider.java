package com.narvii.editor.provider;

import com.narvii.app.NVContext;
import com.narvii.asset.AssetDownloadServiceProvider;
import com.narvii.asset.AssetDownloader;
import com.narvii.editor.asset.MeisheAssetDownloader;

/* loaded from: classes.dex */
public class MeisheAssetDownloadServiceProvider extends AssetDownloadServiceProvider {
    int assetType;

    public MeisheAssetDownloadServiceProvider(String str, int i) {
        super(str);
        this.assetType = i;
    }

    @Override // com.narvii.asset.AssetDownloadServiceProvider
    protected AssetDownloader getAssetDownloader(NVContext nVContext) {
        return new MeisheAssetDownloader(nVContext, this.path, this.assetType);
    }
}
