package com.narvii.editor.asset;

import com.narvii.app.NVContext;
import com.narvii.asset.AssetDownloader;
import com.narvii.editor.utils.MeisheUtils;

/* loaded from: classes.dex */
public class MeisheAssetDownloader extends AssetDownloader {
    private int assetType;

    @Override // com.narvii.asset.AssetDownloader
    protected boolean applyZipExtract() {
        return true;
    }

    public MeisheAssetDownloader(NVContext nVContext, String str, int i) {
        super(nVContext, str);
        this.assetType = i;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public void clearCache() {
        super.clearCache();
        MeisheUtils.uninstallAllAssetsOfType(this.assetType);
    }
}
