package com.narvii.pre_editing;

import com.narvii.app.NVContext;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import com.narvii.util.text.TextUtils;
import java.io.File;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: YtbFileLoader.kt */
/* loaded from: classes3.dex */
public final class YtbFileLoader extends FileLoader {
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
    public YtbFileLoader(NVContext ctx, String path) {
        super(ctx, path);
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(path, "path");
    }

    public final void loadYtbFile(String url, String ytbId, IFileDownloadCallback callback) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        Intrinsics.checkParameterIsNotNull(ytbId, "ytbId");
        Intrinsics.checkParameterIsNotNull(callback, "callback");
        if (TextUtils.isEmpty(url)) {
            callback.onError(url, new IllegalArgumentException("url is empty"));
        } else if (TextUtils.isEmpty(ytbId)) {
            callback.onError(url, new IllegalArgumentException("ytb id is empty"));
        } else {
            requireFile(new FileLoaderRequest.Companion.Builder(url).applyZipExtract(false).applyCache(false).attachObject(ytbId).build(), callback);
        }
    }

    @Override // com.narvii.util.fileloader.FileLoader
    protected Pair<File, Boolean> initCacheDir() {
        return new Pair<>(new File(getPath()), false);
    }

    @Override // com.narvii.util.fileloader.FileLoader
    public String getFileName(FileLoaderRequest request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        Object obj = request.getBuilder().getObj();
        if (obj == null) {
            obj = String.valueOf(System.currentTimeMillis());
        }
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.String");
        }
        return "ytb_download_" + ((String) obj) + ".mp4";
    }
}
