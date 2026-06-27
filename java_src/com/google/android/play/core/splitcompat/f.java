package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
final class f implements h {
    private final /* synthetic */ Set a;
    private final /* synthetic */ p b;
    private final /* synthetic */ e c;

    f(e eVar, Set set, p pVar) {
        this.c = eVar;
        this.a = set;
        this.b = pVar;
    }

    @Override // com.google.android.play.core.splitcompat.h
    public final void a(ZipFile zipFile, Set<j> set) throws IOException {
        this.a.addAll(this.c.a((Set<j>) set, this.b, zipFile));
    }
}
