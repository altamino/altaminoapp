package com.narvii.util.fileloader;

import java.io.File;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface IFileDownloadCallback {

    public static final class DefaultImpls {
        @Nullable
        public static Object getRealCallback(@NotNull IFileDownloadCallback iFileDownloadCallback) {
            return null;
        }

        @Nullable
        public static Object getTag(@NotNull IFileDownloadCallback iFileDownloadCallback) {
            return null;
        }
    }

    @Nullable
    Object getRealCallback();

    @Nullable
    Object getTag();

    void onError(@NotNull String str, @Nullable Exception exc);

    void onPostExecute(@NotNull File file);

    void onProgressUpdate(int i10, int i11);
}
