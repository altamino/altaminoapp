package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes2.dex */
class f0 {
    private static void a(@Nullable InputStream inputStream, @NonNull File file) throws Throwable {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int i10 = inputStream.read(bArr);
                    if (i10 <= 0) {
                        gZIPOutputStream2.finish();
                        i.g(gZIPOutputStream2);
                        return;
                    }
                    gZIPOutputStream2.write(bArr, 0, i10);
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    i.g(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    static void b(File file, List<e0> list) {
        for (e0 e0Var : list) {
            InputStream stream = null;
            try {
                stream = e0Var.getStream();
                if (stream != null) {
                    a(stream, new File(file, e0Var.a()));
                }
            } catch (IOException unused) {
            } finally {
                i.g(null);
            }
        }
    }
}
