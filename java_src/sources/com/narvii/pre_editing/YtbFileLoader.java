package com.narvii.pre_editing;

import com.narvii.app.NVContext;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
import com.narvii.util.fileloader.INVFileCache;
import com.narvii.util.text.TextUtils;
import java.io.File;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes11.dex */
public final class YtbFileLoader extends FileLoader {
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
    public YtbFileLoader(@NotNull NVContext ctx, @NotNull String path) {
        super(ctx, path);
        t.j(ctx, "ctx");
        t.j(path, "path");
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    public String getFileName(@NotNull FileLoaderRequest request) {
        t.j(request, "request");
        Object obj = request.getBuilder().getObj();
        if (obj == null) {
            obj = String.valueOf(System.currentTimeMillis());
        }
        t.h(obj, "null cannot be cast to non-null type kotlin.String");
        return "ytb_download_" + ((String) obj) + ".mp4";
    }

    @Override // com.narvii.util.fileloader.FileLoader
    @NotNull
    protected u<File, Boolean> initCacheDir() {
        return new u<>(new File(getPath()), Boolean.FALSE);
    }

    public final void loadYtbFile(@NotNull String url, @NotNull String ytbId, @NotNull IFileDownloadCallback callback) {
        t.j(url, "url");
        t.j(ytbId, "ytbId");
        t.j(callback, "callback");
        if (TextUtils.isEmpty(url)) {
            callback.onError(url, new IllegalArgumentException("url is empty"));
        } else if (TextUtils.isEmpty(ytbId)) {
            callback.onError(url, new IllegalArgumentException("ytb id is empty"));
        } else {
            requireFile(new FileLoaderRequest.Companion.Builder(url).applyZipExtract(false).applyCache(false).attachObject(ytbId).build(), callback);
        }
    }
}
