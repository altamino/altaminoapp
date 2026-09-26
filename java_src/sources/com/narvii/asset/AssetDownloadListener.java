package com.narvii.asset;

import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public interface AssetDownloadListener {
    void onError(IAsset iAsset, Exception exc);

    void onPostExecute(IAsset iAsset, File file);

    void onProgressUpdate(IAsset iAsset, int i10, int i11);
}
