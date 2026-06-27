package com.narvii.util.fileloader;

import java.io.File;

/* compiled from: IFileDownloadCallback.kt */
/* loaded from: classes3.dex */
public interface IFileDownloadCallback {

    /* compiled from: IFileDownloadCallback.kt */
    public static final class DefaultImpls {
        public static Object getRealCallback(IFileDownloadCallback iFileDownloadCallback) {
            return null;
        }

        public static Object getTag(IFileDownloadCallback iFileDownloadCallback) {
            return null;
        }
    }

    Object getRealCallback();

    Object getTag();

    void onError(String str, Exception exc);

    void onPostExecute(File file);

    void onProgressUpdate(int i, int i2);
}
