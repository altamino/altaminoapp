package com.narvii.media.giphy;

import android.content.Context;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import java.io.File;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GiphyStickerLoader.kt */
/* loaded from: classes3.dex */
public final class GiphyStickerLoader extends FileLoader {
    private final int giphyItemMaxSize;

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean dispatchToMainThread() {
        return true;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public INVFileCache provideCache(File dir) {
        Intrinsics.checkParameterIsNotNull(dir, "dir");
        return null;
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public boolean validateCacheFile(File cache) {
        Intrinsics.checkParameterIsNotNull(cache, "cache");
        return true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GiphyStickerLoader(NVContext ctx, String path) {
        super(ctx, path);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(path, "path");
        this.giphyItemMaxSize = ((ConfigService) ctx.getService("config")).getInt("maxUploadImagePayloadLength", 6291456);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    protected Pair<File, Boolean> initCacheDir() {
        Context context = getCtx().getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        return new Pair<>(new File(context.getFilesDir(), getPath()), true);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getFileName(FileLoaderRequest request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        Object obj = request.getBuilder().getObj();
        if (obj instanceof GiphyItem) {
            GiphyItem giphyItem = (GiphyItem) obj;
            if (TextUtils.isEmpty(giphyItem.packId)) {
                return giphyItem.id + ".gif";
            }
            return giphyItem.packId + "_" + giphyItem.id + ".gif";
        }
        return super.getFileName(request);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getSessionKey(FileLoaderRequest request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        Object obj = request.getBuilder().getObj();
        if (obj instanceof GiphyItem) {
            GiphyItem giphyItem = (GiphyItem) obj;
            if (TextUtils.isEmpty(giphyItem.packId)) {
                return giphyItem.id + ".gif";
            }
            return giphyItem.packId + "_" + giphyItem.id + ".gif";
        }
        return super.getSessionKey(request);
    }

    public final void loadGiphySticker(GiphyItem giphyItem, IFileDownloadCallback callback) {
        Intrinsics.checkParameterIsNotNull(giphyItem, "giphyItem");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        String str = giphyItem.id;
        Intrinsics.checkExpressionValueIsNotNull(str, "giphyItem.id");
        if (containsRealCallback(str, callback)) {
            return;
        }
        String str2 = giphyItem.fullsizeImage(this.giphyItemMaxSize).url;
        Intrinsics.checkExpressionValueIsNotNull(str2, "giphyItem.fullsizeImage(giphyItemMaxSize).url");
        requireFile(new FileLoaderRequest.Companion.Builder(str2).applyCache(false).applyZipExtract(false).attachObject(giphyItem).build(), callback);
    }
}
