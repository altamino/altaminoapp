package com.safedk.android.internal.partials;

import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class OkHttpFilesBridge {
    public static FileOutputStream fileOutputStreamCtor(File file) {
        return new FileOutputStream(file);
    }
}
