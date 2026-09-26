package com.narvii.asset;

import com.narvii.app.NVContext;
import com.narvii.util.FileUtils;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import java.io.FileNotFoundException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes9.dex */
public class AssetDownloader extends FileLoader implements IAssetDownloader {
    protected boolean applyZipExtract() {
        return false;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.asset.IAssetDownloader
    public File getDownloadedFile(IAsset iAsset) {
        return getDownloadedFile(getFileName(iAsset));
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getFileName(@NotNull FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        return obj instanceof IAsset ? getFileName((IAsset) obj) : super.getFileName(fileLoaderRequest);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getSessionKey(@NotNull FileLoaderRequest fileLoaderRequest) {
        Object obj = fileLoaderRequest.getBuilder().getObj();
        return obj instanceof IAsset ? getSessionKey((IAsset) obj) : super.getSessionKey(fileLoaderRequest);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @Nullable
    public INVFileCache provideCache(@NotNull File file) {
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(@NotNull File file) {
        return true;
    }

    public File getDownloadedFile(String str) {
        if (str == null) {
            return null;
        }
        return new File(this.dir, str);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    protected u<File, Boolean> initCacheDir() {
        return new u<>(new File(getCtx().getContext().getFilesDir(), getPath()), Boolean.TRUE);
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
                @Nullable
                public Object getRealCallback() {
                    return assetDownloadListener;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                @Nullable
                public Object getTag() {
                    return assetDownloadListener;
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onError(@NotNull String str, @Nullable Exception exc) {
                    assetDownloadListener.onError(iAsset, exc);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onProgressUpdate(int i10, int i11) {
                    assetDownloadListener.onProgressUpdate(iAsset, i10, i11);
                }

                @Override // com.narvii.util.fileloader.IFileDownloadCallback
                public void onPostExecute(@NotNull File file) {
                    if (!file.exists()) {
                        onError(iAsset.getUrl(), new FileNotFoundException());
                    }
                    assetDownloadListener.onPostExecute(iAsset, file);
                }
            });
        }
    }

    public AssetDownloader(@NotNull NVContext nVContext, @NotNull String str) {
        super(nVContext, str);
    }

    @Override // com.narvii.asset.IAssetDownloader
    public void deleteDownloadedFile(IAsset iAsset) {
        FileUtils.deleteFile(getDownloadedFile(iAsset));
    }

    @Override // com.narvii.asset.IAssetDownloader
    public DownloadStatusInfo getDownloadState(IAsset iAsset) {
        float f;
        FileLoader.Session session = getSession(getSessionKey(iAsset));
        if (session != null) {
            int contentLength = session.getContentLength();
            int downloadedByte = session.getDownloadedByte();
            if (contentLength == 0) {
                f = 0.0f;
            } else {
                f = (downloadedByte * 1.0f) / contentLength;
            }
            return new DownloadStatusInfo(1, f);
        }
        if (new File(this.dir, getFileName(iAsset)).exists()) {
            return DownloadStatusInfo.READY;
        }
        return DownloadStatusInfo.IDLE;
    }

    @Override // com.narvii.asset.IAssetDownloader
    public void removeDownloadListenerByTag(Object obj) {
        removeCallbackByTag(obj);
    }

    private String getSessionKey(IAsset iAsset) {
        return iAsset.id();
    }

    protected String getFileName(IAsset iAsset) {
        return iAsset.id();
    }
}
