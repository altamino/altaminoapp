package com.narvii.asset;

import com.narvii.app.NVContext;
import com.narvii.util.FileUtils;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import java.io.FileNotFoundException;
import kotlin.Pair;

/* loaded from: classes.dex */
public class AssetDownloader extends FileLoader implements IAssetDownloader {
    protected boolean applyZipExtract() {
        return false;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public INVFileCache provideCache(File file) {
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(File file) {
        return true;
    }

    public AssetDownloader(NVContext nVContext, String str) {
        super(nVContext, str);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getFileName(FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        if (obj instanceof IAsset) {
            return getFileName((IAsset) obj);
        }
        return super.getFileName(fileLoaderRequest);
    }

    protected String getFileName(IAsset iAsset) {
        return iAsset.id();
    }

    @Override // com.narvii.util.fileloader.FileLoader
    protected Pair<File, Boolean> initCacheDir() {
        return new Pair<>(new File(getCtx().getContext().getFilesDir(), getPath()), true);
    }

    @Override // com.narvii.asset.IAssetDownloader
    public void loadAsset(final IAsset iAsset, final AssetDownloadListener assetDownloadListener) {
        if (iAsset == null) {
            assetDownloadListener.onError(null, new FileNotFoundException());
        } else {
            if (containsRealCallback(getSessionKey(iAsset), assetDownloadListener)) {
                return;
            }
            requireFile(new FileLoaderRequest.Companion.Builder(iAsset.getUrl()).applyZipExtract(applyZipExtract()).applyCache(false).attachObject(iAsset).build(), new IFileDownloadCallback() { // from class: com.narvii.asset.AssetDownloader.1
                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public Object getRealCallback() {
                    return assetDownloadListener;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onProgressUpdate(int i, int i2) {
                    assetDownloadListener.onProgressUpdate(iAsset, i, i2);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onPostExecute(File file) {
                    if (!file.exists()) {
                        onError(iAsset.getUrl(), new FileNotFoundException());
                    }
                    assetDownloadListener.onPostExecute(iAsset, file);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onError(String str, Exception exc) {
                    assetDownloadListener.onError(iAsset, exc);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public Object getTag() {
                    return assetDownloadListener;
                }
            });
        }
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getSessionKey(FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        if (obj instanceof IAsset) {
            return getSessionKey((IAsset) obj);
        }
        return super.getSessionKey(fileLoaderRequest);
    }

    private String getSessionKey(IAsset iAsset) {
        return iAsset.id();
    }

    @Override // com.narvii.asset.IAssetDownloader
    public DownloadStatusInfo getDownloadState(IAsset iAsset) {
        FileLoader.Session session = getSession(getSessionKey(iAsset));
        if (session != null) {
            int contentLength = session.getContentLength();
            return new DownloadStatusInfo(1, contentLength == 0 ? 0.0f : (session.getDownloadedByte() * 1.0f) / contentLength);
        }
        if (new File(this.dir, getFileName(iAsset)).exists()) {
            return DownloadStatusInfo.READY;
        }
        return DownloadStatusInfo.IDLE;
    }

    @Override // com.narvii.asset.IAssetDownloader
    public void deleteDownloadedFile(IAsset iAsset) {
        FileUtils.deleteFile(getDownloadedFile(iAsset));
    }

    @Override // com.narvii.asset.IAssetDownloader
    public File getDownloadedFile(IAsset iAsset) {
        return getDownloadedFile(getFileName(iAsset));
    }

    public File getDownloadedFile(String str) {
        if (str == null) {
            return null;
        }
        return new File(this.dir, str);
    }

    @Override // com.narvii.asset.IAssetDownloader
    public void removeDownloadListenerByTag(Object obj) {
        removeCallbackByTag(obj);
    }
}
