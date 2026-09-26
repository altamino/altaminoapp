package com.narvii.media.giphy;

import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes11.dex */
public final class GiphyStickerLoader extends FileLoader {
    private final int giphyItemMaxSize;

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @Nullable
    public INVFileCache provideCache(@NotNull File dir) {
        t.j(dir, "dir");
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(@NotNull File cache) {
        t.j(cache, "cache");
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiphyStickerLoader(@NotNull NVContext ctx, @NotNull String path) {
        super(ctx, path);
        t.j(ctx, "ctx");
        t.j(path, "path");
        this.giphyItemMaxSize = ((ConfigService) ctx.getService("config")).getInt("maxUploadImagePayloadLength", 6291456);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getFileName(@NotNull FileLoaderRequest request) {
        t.j(request, "request");
        Object obj = request.getBuilder().getObj();
        if (!(obj instanceof GiphyItem)) {
            return super.getFileName(request);
        }
        GiphyItem giphyItem = (GiphyItem) obj;
        if (TextUtils.isEmpty(giphyItem.packId)) {
            return giphyItem.id + ".gif";
        }
        return giphyItem.packId + '_' + giphyItem.id + ".gif";
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getSessionKey(@NotNull FileLoaderRequest request) {
        t.j(request, "request");
        Object obj = request.getBuilder().getObj();
        if (!(obj instanceof GiphyItem)) {
            return super.getSessionKey(request);
        }
        GiphyItem giphyItem = (GiphyItem) obj;
        if (TextUtils.isEmpty(giphyItem.packId)) {
            return giphyItem.id + ".gif";
        }
        return giphyItem.packId + '_' + giphyItem.id + ".gif";
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    protected u<File, Boolean> initCacheDir() {
        return new u<>(new File(getCtx().getContext().getFilesDir(), getPath()), Boolean.TRUE);
    }

    public final void loadGiphySticker(@NotNull GiphyItem giphyItem, @NotNull IFileDownloadCallback callback) {
        t.j(giphyItem, "giphyItem");
        t.j(callback, "callback");
        String id = giphyItem.id;
        t.i(id, "id");
        if (containsRealCallback(id, callback)) {
            return;
        }
        String url = giphyItem.fullsizeImage(this.giphyItemMaxSize).url;
        t.i(url, "url");
        requireFile(new FileLoaderRequest.Companion.Builder(url).applyCache(false).applyZipExtract(false).attachObject(giphyItem).build(), callback);
    }
}
