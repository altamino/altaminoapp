package com.narvii.asset;

import java.io.File;

/* loaded from: classes2.dex */
public interface AssetDownloadListener {
    void onError(IAsset iAsset, Exception exc);

    void onPostExecute(IAsset iAsset, File file);

    void onProgressUpdate(IAsset iAsset, int i, int i2);
}
