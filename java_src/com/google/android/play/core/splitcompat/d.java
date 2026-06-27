package com.google.android.play.core.splitcompat;

import java.io.IOException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipFile;

/* loaded from: classes.dex */
final class d implements h {
    final /* synthetic */ Set a;
    final /* synthetic */ AtomicBoolean b;
    private final /* synthetic */ p c;
    private final /* synthetic */ e d;

    d(e eVar, p pVar, Set set, AtomicBoolean atomicBoolean) {
        this.d = eVar;
        this.c = pVar;
        this.a = set;
        this.b = atomicBoolean;
    }

    @Override // com.google.android.play.core.splitcompat.h
    public final void a(ZipFile zipFile, Set<j> set) throws IOException {
        this.d.a(this.c, (Set<j>) set, new g(this));
    }
}
