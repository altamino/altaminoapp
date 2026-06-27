package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
final class i implements k {
    private final /* synthetic */ Set a;
    private final /* synthetic */ p b;
    private final /* synthetic */ ZipFile c;

    i(Set set, p pVar, ZipFile zipFile) {
        this.a = set;
        this.b = pVar;
        this.c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.k
    public final void a(j jVar, File file, boolean z) throws IOException {
        this.a.add(file);
        if (z) {
            return;
        }
        Log.i("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.b.a(), jVar.a, this.b.b().getAbsolutePath(), jVar.b.getName(), file.getAbsolutePath()));
        e.b(this.c, jVar.b, file);
    }
}
