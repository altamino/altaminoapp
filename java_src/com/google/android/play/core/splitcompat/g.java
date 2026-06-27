package com.google.android.play.core.splitcompat;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
final class g implements k {
    private final /* synthetic */ d a;

    g(d dVar) {
        this.a = dVar;
    }

    @Override // com.google.android.play.core.splitcompat.k
    public final void a(j jVar, File file, boolean z) throws IOException {
        this.a.a.add(file);
        if (z) {
            return;
        }
        this.a.b.set(false);
    }
}
