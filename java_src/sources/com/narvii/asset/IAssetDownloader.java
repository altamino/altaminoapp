package com.narvii.asset;

import java.io.File;

/* JADX INFO: loaded from: classes7.dex */
public interface IAssetDownloader {
    void deleteDownloadedFile(IAsset iAsset);

    DownloadStatusInfo getDownloadState(IAsset iAsset);

    File getDownloadedFile(IAsset iAsset);

    void loadAsset(IAsset iAsset, AssetDownloadListener assetDownloadListener);

    void removeDownloadListenerByTag(Object obj);
}
